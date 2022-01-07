
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sival_ptr; int sival_int; } ;
struct TYPE_7__ {int si_code; TYPE_1__ si_value; int si_uid; int si_pid; int si_addr; void* si_status; int si_band; int si_timerid; } ;
typedef TYPE_2__ siginfo_t ;
struct TYPE_8__ {void* lsi_ptr; int lsi_int; int lsi_uid; int lsi_pid; void* lsi_addr; void* lsi_status; int lsi_errno; int lsi_band; int lsi_tid; int lsi_code; int lsi_signo; } ;
typedef TYPE_3__ l_siginfo_t ;
typedef int l_int ;


 int CLD_CONTINUED ;
 int CLD_STOPPED ;





 int LINUX_SIGRTMIN ;

 void* PTROUT (int ) ;
 void* SIGCONT ;




 void* bsd_to_linux_signal (void*) ;
 int sicode_to_lsicode (int,int *) ;

void
siginfo_to_lsiginfo(const siginfo_t *si, l_siginfo_t *lsi, l_int sig)
{


 lsi->lsi_signo = sig;
 sicode_to_lsicode(si->si_code, &lsi->lsi_code);

 switch (si->si_code) {
 case 130:
  lsi->lsi_pid = si->si_pid;
  lsi->lsi_uid = si->si_uid;
  break;

 case 128:
  lsi->lsi_int = si->si_value.sival_int;
  lsi->lsi_ptr = PTROUT(si->si_value.sival_ptr);
  lsi->lsi_tid = si->si_timerid;
  break;

 case 129:
  lsi->lsi_pid = si->si_pid;
  lsi->lsi_uid = si->si_uid;
  lsi->lsi_ptr = PTROUT(si->si_value.sival_ptr);
  break;

 case 131:
  lsi->lsi_int = si->si_value.sival_int;
  lsi->lsi_ptr = PTROUT(si->si_value.sival_ptr);
  break;

 default:
  switch (sig) {
  case 133:

   lsi->lsi_band = si->si_band;
   break;

  case 136:
   lsi->lsi_errno = 0;
   lsi->lsi_pid = si->si_pid;
   lsi->lsi_uid = si->si_uid;

   if (si->si_code == CLD_STOPPED)
    lsi->lsi_status = bsd_to_linux_signal(si->si_status);
   else if (si->si_code == CLD_CONTINUED)
    lsi->lsi_status = bsd_to_linux_signal(SIGCONT);
   else
    lsi->lsi_status = si->si_status;
   break;

  case 137:
  case 134:
  case 135:
  case 132:
   lsi->lsi_addr = PTROUT(si->si_addr);
   break;

  default:
   lsi->lsi_pid = si->si_pid;
   lsi->lsi_uid = si->si_uid;
   if (sig >= LINUX_SIGRTMIN) {
    lsi->lsi_int = si->si_value.sival_int;
    lsi->lsi_ptr = PTROUT(si->si_value.sival_ptr);
   }
   break;
  }
  break;
 }
}
