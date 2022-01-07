
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_expr_t ;
typedef scalar_t__ c_db_sym_t ;


 scalar_t__ C_DB_SYM_NULL ;
 scalar_t__ db_lookup (char const*) ;
 int db_symbol_values (scalar_t__,char const**,int *) ;

bool
db_value_of_name(const char *name, db_expr_t *valuep)
{
 c_db_sym_t sym;

 sym = db_lookup(name);
 if (sym == C_DB_SYM_NULL)
     return (0);
 db_symbol_values(sym, &name, valuep);
 return (1);
}
