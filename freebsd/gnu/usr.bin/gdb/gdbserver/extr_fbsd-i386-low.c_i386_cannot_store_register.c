
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i386_num_regs ;

__attribute__((used)) static int
i386_cannot_store_register (int regno)
{
  return (regno >= i386_num_regs);
}
