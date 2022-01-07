
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
typedef int sigset_t ;
struct TYPE_2__ {int hc_controlconn; } ;


 int EX_OK ;
 int PJDLOG_ABORT (char*,int) ;
 int PJDLOG_VERIFY (int) ;




 TYPE_1__* cfg ;
 int child_exit () ;
 int exit (int ) ;
 int hastd_reload () ;
 int proto_close (int ) ;
 scalar_t__ sigaddset (int *,int) ;
 scalar_t__ sigemptyset (int *) ;
 int sigexit_received ;
 int sigtimedwait (int *,int *,struct timespec*) ;
 int terminate_workers () ;

__attribute__((used)) static void
check_signals(void)
{
 struct timespec sigtimeout;
 sigset_t mask;
 int signo;

 sigtimeout.tv_sec = 0;
 sigtimeout.tv_nsec = 0;

 PJDLOG_VERIFY(sigemptyset(&mask) == 0);
 PJDLOG_VERIFY(sigaddset(&mask, 130) == 0);
 PJDLOG_VERIFY(sigaddset(&mask, 129) == 0);
 PJDLOG_VERIFY(sigaddset(&mask, 128) == 0);
 PJDLOG_VERIFY(sigaddset(&mask, 131) == 0);

 while ((signo = sigtimedwait(&mask, ((void*)0), &sigtimeout)) != -1) {
  switch (signo) {
  case 129:
  case 128:
   sigexit_received = 1;
   terminate_workers();
   proto_close(cfg->hc_controlconn);
   exit(EX_OK);
   break;
  case 131:
   child_exit();
   break;
  case 130:
   hastd_reload();
   break;
  default:
   PJDLOG_ABORT("Unexpected signal (%d).", signo);
  }
 }
}
