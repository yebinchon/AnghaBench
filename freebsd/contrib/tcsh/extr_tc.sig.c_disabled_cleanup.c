
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int handle_pending_signals () ;

void
disabled_cleanup(void *xdisabled)
{
    int *disabled;

    disabled = xdisabled;
    if (--*disabled == 0)
 handle_pending_signals();
}
