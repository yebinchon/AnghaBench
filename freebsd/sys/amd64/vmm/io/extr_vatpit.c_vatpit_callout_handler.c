
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vatpit_callout_arg {size_t channel_num; struct vatpit* vatpit; } ;
struct vatpit {int vm; struct channel* channel; } ;
struct callout {int dummy; } ;
struct channel {scalar_t__ mode; struct callout callout; } ;


 scalar_t__ TIMER_RATEGEN ;
 int VATPIT_LOCK (struct vatpit*) ;
 int VATPIT_UNLOCK (struct vatpit*) ;
 int VM_CTR1 (int ,char*,size_t) ;
 int callout_active (struct callout*) ;
 int callout_deactivate (struct callout*) ;
 scalar_t__ callout_pending (struct callout*) ;
 int pit_timer_start_cntr0 (struct vatpit*) ;
 int vatpic_pulse_irq (int ,int ) ;
 int vioapic_pulse_irq (int ,int) ;

__attribute__((used)) static void
vatpit_callout_handler(void *a)
{
 struct vatpit_callout_arg *arg = a;
 struct vatpit *vatpit;
 struct callout *callout;
 struct channel *c;

 vatpit = arg->vatpit;
 c = &vatpit->channel[arg->channel_num];
 callout = &c->callout;

 VM_CTR1(vatpit->vm, "atpit t%d fired", arg->channel_num);

 VATPIT_LOCK(vatpit);

 if (callout_pending(callout))
  goto done;

 if (!callout_active(callout))
  goto done;

 callout_deactivate(callout);

 if (c->mode == TIMER_RATEGEN) {
  pit_timer_start_cntr0(vatpit);
 }

 vatpic_pulse_irq(vatpit->vm, 0);
 vioapic_pulse_irq(vatpit->vm, 2);

done:
 VATPIT_UNLOCK(vatpit);
 return;
}
