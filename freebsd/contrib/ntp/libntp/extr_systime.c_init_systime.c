
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DONE_SYSTIME_INIT () ;
 int INIT_GET_SYSTIME_CRITSEC () ;
 int INIT_WIN_PRECISE_TIME () ;

void
init_systime(void)
{
 INIT_GET_SYSTIME_CRITSEC();
 INIT_WIN_PRECISE_TIME();
 DONE_SYSTIME_INIT();
}
