
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AMD64_NUM_REGS ;
 int* amd64_regmap ;
 int supply_register (int,char*) ;

__attribute__((used)) static void
amd64_store_gregset(const void *buf)
{
 int i;

 for (i = 0; i < AMD64_NUM_REGS; i++)
  supply_register(i, ((char *)buf) + amd64_regmap[i]);
}
