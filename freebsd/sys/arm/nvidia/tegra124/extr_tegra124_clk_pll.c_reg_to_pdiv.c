
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pll_sc {struct pdiv_table* pdiv_table; } ;
struct pdiv_table {int divider; int value; } ;



__attribute__((used)) static uint32_t
reg_to_pdiv(struct pll_sc *sc, uint32_t reg)
{
 struct pdiv_table *tbl;

 tbl = sc->pdiv_table;
 if (tbl == ((void*)0))
  return (1 << reg);

 while (tbl->divider) {
  if (reg == tbl->value)
   return (tbl->divider);
  tbl++;
 }
 return (0);
}
