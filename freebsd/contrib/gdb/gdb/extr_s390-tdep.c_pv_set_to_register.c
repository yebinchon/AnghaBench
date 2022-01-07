
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prologue_value {int reg; int k; int kind; } ;
typedef int CORE_ADDR ;


 int pv_register ;

__attribute__((used)) static void
pv_set_to_register (struct prologue_value *v, int reg, CORE_ADDR k)
{
  v->kind = pv_register;
  v->reg = reg;
  v->k = k;
}
