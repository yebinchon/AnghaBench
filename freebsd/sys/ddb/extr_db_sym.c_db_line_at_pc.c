
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_expr_t ;
typedef int c_db_sym_t ;


 int X_db_line_at_pc (int ,int ,char**,int*,int ) ;
 int db_last_symtab ;

__attribute__((used)) static bool
db_line_at_pc(c_db_sym_t sym, char **filename, int *linenum, db_expr_t pc)
{
 return (X_db_line_at_pc(db_last_symtab, sym, filename, linenum, pc));
}
