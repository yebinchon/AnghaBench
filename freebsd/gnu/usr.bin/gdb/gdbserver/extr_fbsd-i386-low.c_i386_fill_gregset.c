
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int collect_register (int,char*) ;
 int i386_num_regs ;
 int* i386_regmap ;

__attribute__((used)) static void
i386_fill_gregset (void *buf)
{
  int i;

  for (i = 0; i < i386_num_regs; i++)
    collect_register (i, ((char *) buf) + i386_regmap[i]);

}
