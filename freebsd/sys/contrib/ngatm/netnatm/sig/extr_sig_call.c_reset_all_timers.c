
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct call {int dummy; } ;


 int TIMER_STOP_CALL (struct call*,int ) ;
 int t301 ;
 int t303 ;
 int t308 ;
 int t310 ;
 int t313 ;
 int t322 ;

__attribute__((used)) static void
reset_all_timers(struct call *c)
{
 TIMER_STOP_CALL(c, t301);
 TIMER_STOP_CALL(c, t303);
 TIMER_STOP_CALL(c, t308);
 TIMER_STOP_CALL(c, t310);
 TIMER_STOP_CALL(c, t313);
 TIMER_STOP_CALL(c, t322);
}
