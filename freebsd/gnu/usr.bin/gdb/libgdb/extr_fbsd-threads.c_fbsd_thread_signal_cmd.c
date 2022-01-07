
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ si_signo; scalar_t__ si_errno; int si_code; int si_addr; int si_status; int si_uid; int si_pid; } ;
struct TYPE_5__ {TYPE_1__ ti_siginfo; int ti_pending; int ti_sigmask; } ;
typedef TYPE_2__ td_thrinfo_t ;
typedef int td_thrhandle_t ;
typedef scalar_t__ td_err_e ;


 int GET_THREAD (int ) ;
 int IS_THREAD (int ) ;







 scalar_t__ TD_OK ;
 int fbsd_print_sigset (int *) ;
 int fbsd_thread_active ;
 int inferior_ptid ;
 int printf_filtered (char*,...) ;
 int strerror (scalar_t__) ;
 scalar_t__ td_ta_map_id2thr_p (int ,int ,int *) ;
 scalar_t__ td_thr_get_info_p (int *,TYPE_2__*) ;
 int thread_agent ;

__attribute__((used)) static void
fbsd_thread_signal_cmd (char *exp, int from_tty)
{
  td_thrhandle_t th;
  td_thrinfo_t ti;
  td_err_e err;
  const char *code;

  if (!fbsd_thread_active || !IS_THREAD(inferior_ptid))
    return;

  err = td_ta_map_id2thr_p (thread_agent, GET_THREAD (inferior_ptid), &th);
  if (err != TD_OK)
    return;

  err = td_thr_get_info_p (&th, &ti);
  if (err != TD_OK)
    return;

  printf_filtered("signal mask:\n");
  fbsd_print_sigset(&ti.ti_sigmask);
  printf_filtered("signal pending:\n");
  fbsd_print_sigset(&ti.ti_pending);
  if (ti.ti_siginfo.si_signo != 0) {
   printf_filtered("si_signo %d si_errno %d", ti.ti_siginfo.si_signo,
     ti.ti_siginfo.si_errno);
   if (ti.ti_siginfo.si_errno != 0)
    printf_filtered(" (%s)", strerror(ti.ti_siginfo.si_errno));
   printf_filtered("\n");
   switch (ti.ti_siginfo.si_code) {
   case 131:
 code = "NOINFO";
 break;
    case 128:
 code = "USER";
 break;
    case 130:
 code = "QUEUE";
 break;
    case 129:
 code = "TIMER";
 break;
    case 134:
 code = "ASYNCIO";
 break;
    case 132:
 code = "MESGQ";
 break;
    case 133:
 code = "KERNEL";
 break;
    default:
 code = "UNKNOWN";
 break;
    }
    printf_filtered("si_code %s (%d) si_pid %d si_uid %d si_status %x "
      "si_addr %p\n",
      code, ti.ti_siginfo.si_code, ti.ti_siginfo.si_pid, ti.ti_siginfo.si_uid,
      ti.ti_siginfo.si_status, ti.ti_siginfo.si_addr);
  }
}
