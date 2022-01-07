
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cleanup_push (int*,int ) ;
 int handle_pending_signals () ;
 int pintr_disabled ;
 int pintr_disabled_restore ;

void
pintr_push_enable(int *saved)
{
    *saved = pintr_disabled;
    pintr_disabled = 0;
    cleanup_push(saved, pintr_disabled_restore);
    handle_pending_signals();
}
