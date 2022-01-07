
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGALRM ;
 int alarm (int) ;
 int signal (int ,int (*) ()) ;
 int stat_is_init ;
 int updatestat () ;

void
stat_init(void)
{
    stat_is_init = 1;
    alarm(0);
    updatestat();
    (void) signal(SIGALRM, updatestat);
    alarm(1);
}
