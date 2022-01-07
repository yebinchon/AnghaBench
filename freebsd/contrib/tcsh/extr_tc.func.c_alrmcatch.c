
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alm_fun () ;
 int setalarm (int) ;
 int stub1 () ;

void
alrmcatch(void)
{
    (*alm_fun)();
    setalarm(1);
}
