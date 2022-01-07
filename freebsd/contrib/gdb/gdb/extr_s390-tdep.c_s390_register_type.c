
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct type {int dummy; } ;
struct gdbarch {int dummy; } ;
struct TYPE_2__ {struct type** type; } ;


 int S390_NUM_TOTAL_REGS ;
 int gdb_assert (int) ;
 TYPE_1__* s390_register_info ;

__attribute__((used)) static struct type *
s390_register_type (struct gdbarch *gdbarch, int regnum)
{
  gdb_assert (regnum >= 0 && regnum < S390_NUM_TOTAL_REGS);
  return *s390_register_info[regnum].type;
}
