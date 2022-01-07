
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int c_db_sym_t ;


 int X_db_sym_numargs (int ,int ,int*,char**) ;
 int db_last_symtab ;

bool
db_sym_numargs(c_db_sym_t sym, int *nargp, char **argnames)
{
 return (X_db_sym_numargs(db_last_symtab, sym, nargp, argnames));
}
