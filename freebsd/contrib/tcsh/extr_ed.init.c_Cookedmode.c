
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int EX_IO ;
 int SHTTY ;
 int SIGINT ;
 int SIG_BLOCK ;
 scalar_t__ Tty_raw_mode ;
 int cleanup_push (int *,int ) ;
 int cleanup_until (int *) ;
 int do_nt_cooked_mode () ;
 int errno ;
 int extty ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 int sigprocmask_cleanup ;
 int strerror (int ) ;
 int tty_setdisc (int ,int ) ;
 int tty_setty (int ,int *) ;
 int xprintf (char*,int ) ;

int
Cookedmode(void)
{



    sigset_t set, oset;
    int res;





    if (!Tty_raw_mode)
 return (0);


    sigemptyset(&set);
    sigaddset(&set, SIGINT);
    (void)sigprocmask(SIG_BLOCK, &set, &oset);
    cleanup_push(&oset, sigprocmask_cleanup);
    res = tty_setty(SHTTY, &extty);
    cleanup_until(&oset);
    if (res == -1) {



 return -1;
    }


    Tty_raw_mode = 0;
    return (0);
}
