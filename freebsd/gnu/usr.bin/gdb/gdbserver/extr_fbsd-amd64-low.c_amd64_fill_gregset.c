
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AMD64_NUM_REGS ;
 int* amd64_regmap ;
 int collect_register (int,char*) ;

__attribute__((used)) static void
amd64_fill_gregset(void *buf)
{
 int i;

 for (i = 0; i < AMD64_NUM_REGS; i++)
  collect_register(i, ((char *)buf) + amd64_regmap[i]);
}
