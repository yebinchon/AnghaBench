
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i386_num_regs ;
 int* i386_regmap ;
 int supply_register (int,char*) ;

__attribute__((used)) static void
i386_store_gregset (const void *buf)
{
  int i;

  for (i = 0; i < i386_num_regs; i++)
    supply_register (i, ((char *) buf) + i386_regmap[i]);

}
