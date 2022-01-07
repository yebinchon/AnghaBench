
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ db_strategy_t ;
typedef scalar_t__ db_expr_t ;
typedef scalar_t__ db_addr_t ;
typedef int c_db_sym_t ;


 scalar_t__ DB_STGY_PROC ;
 scalar_t__ db_line_at_pc (int ,char**,int*,scalar_t__) ;
 scalar_t__ db_maxoff ;
 int db_printf (char*,...) ;
 int db_search_symbol (scalar_t__,scalar_t__,scalar_t__*) ;
 int db_symbol_values (int ,char const**,int *) ;

void
db_printsym(db_expr_t off, db_strategy_t strategy)
{
 db_expr_t d;
 char *filename;
 const char *name;
 int linenum;
 c_db_sym_t cursym;

 if (off < 0 && off >= -db_maxoff) {
  db_printf("%+#lr", (long)off);
  return;
 }
 cursym = db_search_symbol(off, strategy, &d);
 db_symbol_values(cursym, &name, ((void*)0));
 if (name == ((void*)0) || d >= (db_addr_t)db_maxoff) {
  db_printf("%#lr", (unsigned long)off);
  return;
 }



 db_printf("%s", name);

 if (d)
  db_printf("+%+#lr", (long)d);
 if (strategy == DB_STGY_PROC) {
  if (db_line_at_pc(cursym, &filename, &linenum, off))
   db_printf(" [%s:%d]", filename, linenum);
 }
}
