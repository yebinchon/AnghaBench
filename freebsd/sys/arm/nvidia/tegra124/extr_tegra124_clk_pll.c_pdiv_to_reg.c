
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct pll_sc {struct pdiv_table* pdiv_table; } ;
struct pdiv_table {scalar_t__ divider; scalar_t__ value; } ;


 scalar_t__ ffs (scalar_t__) ;

__attribute__((used)) static uint32_t
pdiv_to_reg(struct pll_sc *sc, uint32_t p_div)
{
 struct pdiv_table *tbl;

 tbl = sc->pdiv_table;
 if (tbl == ((void*)0))
  return (ffs(p_div) - 1);

 while (tbl->divider != 0) {
  if (p_div <= tbl->divider)
   return (tbl->value);
  tbl++;
 }
 return (0xFFFFFFFF);
}
