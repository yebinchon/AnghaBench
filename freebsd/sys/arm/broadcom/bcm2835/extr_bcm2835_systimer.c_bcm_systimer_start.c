
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct systimer {int index; int enabled; } ;
struct eventtimer {scalar_t__ et_frequency; struct systimer* et_priv; } ;
typedef int sbintime_t ;
typedef int register_t ;
typedef scalar_t__ int32_t ;


 int EINVAL ;
 scalar_t__ SYSTIMER_C0 ;
 int SYSTIMER_CLO ;
 scalar_t__ SYSTIMER_CS ;
 int bcm_systimer_tc_read_4 (int ) ;
 int bcm_systimer_tc_write_4 (scalar_t__,int) ;
 int intr_disable () ;
 int intr_restore (int ) ;

__attribute__((used)) static int
bcm_systimer_start(struct eventtimer *et, sbintime_t first, sbintime_t period)
{
 struct systimer *st = et->et_priv;
 uint32_t clo, clo1;
 uint32_t count;
 register_t s;

 if (first != 0) {

  count = ((uint32_t)et->et_frequency * first) >> 32;

  s = intr_disable();
  clo = bcm_systimer_tc_read_4(SYSTIMER_CLO);
restart:
  clo += count;



  bcm_systimer_tc_write_4(SYSTIMER_CS, (1 << st->index));
  bcm_systimer_tc_write_4(SYSTIMER_C0 + st->index*4, clo);
  clo1 = bcm_systimer_tc_read_4(SYSTIMER_CLO);
  if ((int32_t)(clo1 - clo) >= 0) {
   count *= 2;
   clo = clo1;
   goto restart;
  }
  st->enabled = 1;
  intr_restore(s);

  return (0);
 }

 return (EINVAL);
}
