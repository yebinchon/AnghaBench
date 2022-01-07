
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uintmax_t ;
typedef int db_strategy_t ;
typedef unsigned int db_expr_t ;
typedef unsigned int db_addr_t ;
typedef int c_db_sym_t ;


 int C_DB_SYM_NULL ;
 int X_db_search_symbol (int *,unsigned int,int ,size_t*) ;
 int * db_last_symtab ;
 int db_nsymtab ;
 int * db_symtabs ;

c_db_sym_t
db_search_symbol(db_addr_t val, db_strategy_t strategy, db_expr_t *offp)
{
 unsigned int diff;
 size_t newdiff;
 int i;
 c_db_sym_t ret = C_DB_SYM_NULL, sym;

 newdiff = diff = val;
 for (i = 0; i < db_nsymtab; i++) {
     sym = X_db_search_symbol(&db_symtabs[i], val, strategy, &newdiff);
     if ((uintmax_t)newdiff < (uintmax_t)diff) {
  db_last_symtab = &db_symtabs[i];
  diff = newdiff;
  ret = sym;
     }
 }
 *offp = diff;
 return ret;
}
