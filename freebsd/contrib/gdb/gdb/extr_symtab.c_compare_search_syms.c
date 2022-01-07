
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol_search {int symbol; } ;


 int SYMBOL_PRINT_NAME (int ) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int
compare_search_syms (const void *sa, const void *sb)
{
  struct symbol_search **sym_a = (struct symbol_search **) sa;
  struct symbol_search **sym_b = (struct symbol_search **) sb;

  return strcmp (SYMBOL_PRINT_NAME ((*sym_a)->symbol),
   SYMBOL_PRINT_NAME ((*sym_b)->symbol));
}
