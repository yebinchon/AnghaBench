
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SLEEPQ_SLEEP ;
 int kick_proc0 () ;
 int sleepq_lock (void*) ;
 int sleepq_release (void*) ;
 int sleepq_signal (void*,int ,int ,int ) ;

__attribute__((used)) static void
wake_up_sleepers(void *wchan)
{
 int wakeup_swapper;

 sleepq_lock(wchan);
 wakeup_swapper = sleepq_signal(wchan, SLEEPQ_SLEEP, 0, 0);
 sleepq_release(wchan);
 if (wakeup_swapper)
  kick_proc0();
}
