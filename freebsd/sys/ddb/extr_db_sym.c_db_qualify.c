
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int c_db_sym_t ;


 int db_symbol_values (int ,char const**,int ) ;
 int snprintf (char*,int,char*,char*,char const*) ;

__attribute__((used)) static char *
db_qualify(c_db_sym_t sym, char *symtabname)
{
 const char *symname;
 static char tmp[256];

 db_symbol_values(sym, &symname, 0);
 snprintf(tmp, sizeof(tmp), "%s:%s", symtabname, symname);
 return tmp;
}
