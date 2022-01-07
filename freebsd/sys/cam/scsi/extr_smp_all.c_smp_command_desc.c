
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {scalar_t__ cmd_num; char const* desc; } ;


 int nitems (TYPE_1__*) ;
 TYPE_1__* smp_cmd_table ;

const char *
smp_command_desc(uint8_t cmd_num)
{
 int i;

 for (i = 0; i < nitems(smp_cmd_table) &&
      smp_cmd_table[i].cmd_num <= cmd_num; i++) {
  if (cmd_num == smp_cmd_table[i].cmd_num)
   return (smp_cmd_table[i].desc);
 }





 if (((cmd_num >= 0x40) && (cmd_num <= 0x7f))
  || (cmd_num >= 0xc0)) {
  return ("Vendor Specific SMP Command");
 } else {
  return ("Unknown SMP Command");
 }
}
