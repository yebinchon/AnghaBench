
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arm_num_regs ;

__attribute__((used)) static int
arm_cannot_fetch_register (int regno)
{
  return (regno >= arm_num_regs);
}
