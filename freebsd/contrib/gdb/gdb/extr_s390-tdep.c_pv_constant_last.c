
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prologue_value {scalar_t__ kind; } ;


 scalar_t__ pv_constant ;

__attribute__((used)) static void
pv_constant_last (struct prologue_value **a,
                  struct prologue_value **b)
{
  if ((*a)->kind == pv_constant
      && (*b)->kind != pv_constant)
    {
      struct prologue_value *temp = *a;
      *a = *b;
      *b = temp;
    }
}
