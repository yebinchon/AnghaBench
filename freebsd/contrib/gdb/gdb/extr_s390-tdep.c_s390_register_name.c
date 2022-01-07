
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; } ;


 int S390_NUM_TOTAL_REGS ;
 int gdb_assert (int) ;
 TYPE_1__* s390_register_info ;

__attribute__((used)) static const char *
s390_register_name (int regnum)
{
  gdb_assert (regnum >= 0 && regnum < S390_NUM_TOTAL_REGS);
  return s390_register_info[regnum].name;
}
