
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int c_db_sym_t ;


 scalar_t__ X_db_lookup (int *,char const*) ;
 int db_nsymtab ;
 int db_qualify_ambiguous_names ;
 int db_symbol_values (int ,char const**,int ) ;
 int * db_symtabs ;

__attribute__((used)) static bool
db_symbol_is_ambiguous(c_db_sym_t sym)
{
 const char *sym_name;
 int i;
 bool found_once = 0;

 if (!db_qualify_ambiguous_names)
  return (0);

 db_symbol_values(sym, &sym_name, 0);
 for (i = 0; i < db_nsymtab; i++) {
  if (X_db_lookup(&db_symtabs[i], sym_name)) {
   if (found_once)
    return (1);
   found_once = 1;
  }
 }
 return (0);
}
