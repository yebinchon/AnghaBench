
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct completion {scalar_t__ done; } ;


 int SLEEPQ_SLEEP ;
 scalar_t__ UINT_MAX ;
 int kick_proc0 () ;
 int sleepq_broadcast (struct completion*,int ,int ,int ) ;
 int sleepq_lock (struct completion*) ;
 int sleepq_release (struct completion*) ;
 int sleepq_signal (struct completion*,int ,int ,int ) ;

void
linux_complete_common(struct completion *c, int all)
{
 int wakeup_swapper;

 sleepq_lock(c);
 if (all) {
  c->done = UINT_MAX;
  wakeup_swapper = sleepq_broadcast(c, SLEEPQ_SLEEP, 0, 0);
 } else {
  if (c->done != UINT_MAX)
   c->done++;
  wakeup_swapper = sleepq_signal(c, SLEEPQ_SLEEP, 0, 0);
 }
 sleepq_release(c);
 if (wakeup_swapper)
  kick_proc0();
}
