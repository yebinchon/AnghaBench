
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ u_int ;
struct TYPE_3__ {scalar_t__ reg; } ;


 scalar_t__ CPU_DESC_FIELD (int ,int) ;
 int nitems (TYPE_1__*) ;
 int user_cpu_desc ;
 TYPE_1__* user_regs ;

bool
extract_user_id_field(u_int reg, u_int field_shift, uint8_t *val)
{
 uint64_t value;
 int i;

 for (i = 0; i < nitems(user_regs); i++) {
  if (user_regs[i].reg == reg) {
   value = CPU_DESC_FIELD(user_cpu_desc, i);
   *val = value >> field_shift;
   return (1);
  }
 }

 return (0);
}
