
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prologue_value {int k; int kind; } ;
typedef int CORE_ADDR ;


 int pv_constant ;

__attribute__((used)) static void
pv_set_to_constant (struct prologue_value *v, CORE_ADDR k)
{
  v->kind = pv_constant;
  v->k = k;
}
