
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_expr_t ;
typedef int db_addr_t ;


 scalar_t__ C_DB_SYM_NULL ;
 int DB_STGY_PROC ;
 int db_disasm (int ,int) ;
 int db_printf (char*) ;
 int db_printsym (int ,int ) ;
 scalar_t__ db_search_symbol (int ,int ,int *) ;

void
db_print_loc_and_inst(db_addr_t loc)
{
 db_expr_t off;

 db_printsym(loc, DB_STGY_PROC);
 if (db_search_symbol(loc, DB_STGY_PROC, &off) != C_DB_SYM_NULL) {
  db_printf(":\t");
  (void)db_disasm(loc, 0);
 }
}
