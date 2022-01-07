
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prologue_value {scalar_t__ kind; scalar_t__ reg; scalar_t__ k; } ;


 scalar_t__ pv_constant ;
 int pv_constant_last (struct prologue_value**,struct prologue_value**) ;
 scalar_t__ pv_register ;
 scalar_t__ pv_unknown ;

__attribute__((used)) static void
pv_subtract (struct prologue_value *diff,
             struct prologue_value *a,
             struct prologue_value *b)
{
  pv_constant_last (&a, &b);



  if (b->kind == pv_constant
      && (a->kind == pv_register
          || a->kind == pv_constant))
    {
      diff->kind = a->kind;
      diff->reg = a->reg;
      diff->k = a->k - b->k;
    }


  else if (a->kind == pv_register
           && b->kind == pv_register
           && a->reg == b->reg)
    {
      diff->kind = pv_constant;
      diff->k = a->k - b->k;
    }


  else
    diff->kind = pv_unknown;
}
