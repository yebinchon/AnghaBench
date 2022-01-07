
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct vatpic {int dummy; } ;
struct atpic {int aeoi; int sfn; int ready; scalar_t__ icw_num; } ;


 int ICW4_8086 ;
 int ICW4_AEOI ;
 int ICW4_SFNM ;
 int VATPIC_CTR0 (struct vatpic*,char*) ;
 int VATPIC_CTR1 (struct vatpic*,char*,int) ;
 scalar_t__ master_atpic (struct vatpic*,struct atpic*) ;

__attribute__((used)) static int
vatpic_icw4(struct vatpic *vatpic, struct atpic *atpic, uint8_t val)
{
 VATPIC_CTR1(vatpic, "atpic icw4 0x%x", val);

 if ((val & ICW4_8086) == 0) {
  VATPIC_CTR0(vatpic, "vatpic microprocessor mode required");
  return (-1);
 }

 if ((val & ICW4_AEOI) != 0)
  atpic->aeoi = 1;

 if ((val & ICW4_SFNM) != 0) {
  if (master_atpic(vatpic, atpic)) {
   atpic->sfn = 1;
  } else {
   VATPIC_CTR1(vatpic, "Ignoring special fully nested "
       "mode on slave atpic: %#x", val);
  }
 }

 atpic->icw_num = 0;
 atpic->ready = 1;

 return (0);
}
