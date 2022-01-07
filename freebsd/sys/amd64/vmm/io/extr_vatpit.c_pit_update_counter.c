
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint16_t ;
struct vatpit {int dummy; } ;
struct channel {int olbyte; int initial; int* ol; int status; int now_bt; } ;


 int PIT_8254_FREQ ;
 int TIMER_DIV (int ,int) ;
 int TIMER_STS_NULLCNT ;
 int binuptime (int *) ;
 int vatpit_delta_ticks (struct vatpit*,struct channel*) ;

__attribute__((used)) static uint16_t
pit_update_counter(struct vatpit *vatpit, struct channel *c, bool latch)
{
 uint16_t lval;
 uint64_t delta_ticks;


 if (latch && c->olbyte != 0)
  return (0);

 if (c->initial == 0) {
  c->initial = TIMER_DIV(PIT_8254_FREQ, 100);
  binuptime(&c->now_bt);
  c->status &= ~TIMER_STS_NULLCNT;
 }

 delta_ticks = vatpit_delta_ticks(vatpit, c);
 lval = c->initial - delta_ticks % c->initial;

 if (latch) {
  c->olbyte = 2;
  c->ol[1] = lval;
  c->ol[0] = lval >> 8;
 }

 return (lval);
}
