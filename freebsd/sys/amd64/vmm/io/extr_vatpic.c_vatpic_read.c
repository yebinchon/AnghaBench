
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vatpic {int dummy; } ;
struct atpic {int mask; scalar_t__ rd_cmd_reg; int service; int request; scalar_t__ poll; } ;


 int ICU_IMR_OFFSET ;
 scalar_t__ OCW3_RIS ;
 int VATPIC_LOCK (struct vatpic*) ;
 int VATPIC_UNLOCK (struct vatpic*) ;
 int vatpic_get_highest_irrpin (struct atpic*) ;
 int vatpic_pin_accepted (struct atpic*,int) ;

__attribute__((used)) static int
vatpic_read(struct vatpic *vatpic, struct atpic *atpic, bool in, int port,
     int bytes, uint32_t *eax)
{
 int pin;

 VATPIC_LOCK(vatpic);

 if (atpic->poll) {
  atpic->poll = 0;
  pin = vatpic_get_highest_irrpin(atpic);
  if (pin >= 0) {
   vatpic_pin_accepted(atpic, pin);
   *eax = 0x80 | pin;
  } else {
   *eax = 0;
  }
 } else {
  if (port & ICU_IMR_OFFSET) {

   *eax = atpic->mask;
  } else {
   if (atpic->rd_cmd_reg == OCW3_RIS) {

    *eax = atpic->service;
   } else {

    *eax = atpic->request;
   }
  }
 }

 VATPIC_UNLOCK(vatpic);

 return (0);

}
