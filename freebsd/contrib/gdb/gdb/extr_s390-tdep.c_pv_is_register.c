
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prologue_value {scalar_t__ kind; int reg; scalar_t__ k; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ pv_register ;

__attribute__((used)) static int
pv_is_register (struct prologue_value *a, int r, CORE_ADDR k)
{
  return (a->kind == pv_register
          && a->reg == r
          && a->k == k);
}
