
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prologue_value {scalar_t__ kind; scalar_t__ k; int reg; } ;


 scalar_t__ pv_constant ;
 int pv_constant_last (struct prologue_value**,struct prologue_value**) ;
 scalar_t__ pv_register ;
 scalar_t__ pv_unknown ;

__attribute__((used)) static void
pv_add (struct prologue_value *sum,
        struct prologue_value *a,
        struct prologue_value *b)
{
  pv_constant_last (&a, &b);


  if (b->kind == pv_constant
      && (a->kind == pv_register
          || a->kind == pv_constant))
    {
      sum->kind = a->kind;
      sum->reg = a->reg;

      sum->k = a->k + b->k;
    }




  else
    sum->kind = pv_unknown;
}
