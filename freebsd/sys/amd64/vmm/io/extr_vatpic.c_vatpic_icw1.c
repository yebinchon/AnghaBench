
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct vatpic {int dummy; } ;
struct atpic {int ready; int icw_num; int lowprio; scalar_t__ smm; scalar_t__ poll; scalar_t__ rd_cmd_reg; scalar_t__ mask; scalar_t__ request; } ;


 int ICW1_IC4 ;
 int ICW1_SNGL ;
 int VATPIC_CTR0 (struct vatpic*,char*) ;
 int VATPIC_CTR1 (struct vatpic*,char*,int) ;

__attribute__((used)) static int
vatpic_icw1(struct vatpic *vatpic, struct atpic *atpic, uint8_t val)
{
 VATPIC_CTR1(vatpic, "atpic icw1 0x%x", val);

 atpic->ready = 0;

 atpic->icw_num = 1;
 atpic->request = 0;
 atpic->mask = 0;
 atpic->lowprio = 7;
 atpic->rd_cmd_reg = 0;
 atpic->poll = 0;
 atpic->smm = 0;

 if ((val & ICW1_SNGL) != 0) {
  VATPIC_CTR0(vatpic, "vatpic cascade mode required");
  return (-1);
 }

 if ((val & ICW1_IC4) == 0) {
  VATPIC_CTR0(vatpic, "vatpic icw4 required");
  return (-1);
 }

 atpic->icw_num++;

 return (0);
}
