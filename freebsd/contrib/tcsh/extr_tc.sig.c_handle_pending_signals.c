
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alrmcatch () ;
 int alrmcatch_disabled ;
 scalar_t__ alrmcatch_pending ;
 int handle_interrupt ;
 int pchild () ;
 int pchild_disabled ;
 scalar_t__ pchild_pending ;
 int phup () ;
 int phup_disabled ;
 scalar_t__ phup_pending ;
 int pintr () ;
 int pintr_disabled ;
 scalar_t__ pintr_pending ;

int
handle_pending_signals(void)
{
    int rv = 0;
    if (!phup_disabled && phup_pending) {
 phup_pending = 0;
 handle_interrupt++;
 phup();
 handle_interrupt--;
    }
    if (!pintr_disabled && pintr_pending) {
 pintr_pending = 0;
 handle_interrupt++;
 pintr();
 handle_interrupt--;
 rv = 1;
    }
    if (!pchild_disabled && pchild_pending) {
 pchild_pending = 0;
 handle_interrupt++;
 pchild();
 handle_interrupt--;
    }
    if (!alrmcatch_disabled && alrmcatch_pending) {
 alrmcatch_pending = 0;
 handle_interrupt++;
 alrmcatch();
 handle_interrupt--;
    }
    return rv;
}
