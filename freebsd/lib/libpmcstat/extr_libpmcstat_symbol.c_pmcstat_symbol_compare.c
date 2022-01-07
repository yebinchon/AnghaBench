
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcstat_symbol {scalar_t__ ps_end; scalar_t__ ps_start; } ;



int
pmcstat_symbol_compare(const void *a, const void *b)
{
 const struct pmcstat_symbol *sym1, *sym2;

 sym1 = (const struct pmcstat_symbol *) a;
 sym2 = (const struct pmcstat_symbol *) b;

 if (sym1->ps_end <= sym2->ps_start)
  return (-1);
 if (sym1->ps_start >= sym2->ps_end)
  return (1);
 return (0);
}
