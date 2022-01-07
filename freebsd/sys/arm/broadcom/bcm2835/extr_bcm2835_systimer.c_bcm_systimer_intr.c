
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int et_arg; int (* et_event_cb ) (TYPE_1__*,int ) ;scalar_t__ et_active; } ;
struct systimer {int index; TYPE_1__ et; scalar_t__ enabled; } ;


 int FILTER_HANDLED ;
 int FILTER_STRAY ;
 int SYSTIMER_CS ;
 int bcm_systimer_tc_read_4 (int ) ;
 int bcm_systimer_tc_write_4 (int ,int) ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static int
bcm_systimer_intr(void *arg)
{
 struct systimer *st = (struct systimer *)arg;
 uint32_t cs;

 cs = bcm_systimer_tc_read_4(SYSTIMER_CS);
 if ((cs & (1 << st->index)) == 0)
  return (FILTER_STRAY);


 bcm_systimer_tc_write_4(SYSTIMER_CS, (1 << st->index));
 if (st->enabled) {
  if (st->et.et_active) {
   st->et.et_event_cb(&st->et, st->et.et_arg);
  }
 }

 return (FILTER_HANDLED);
}
