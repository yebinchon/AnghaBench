
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ c_db_sym_t ;
struct TYPE_4__ {int name; } ;


 scalar_t__ X_db_lookup (TYPE_1__*,char const*) ;
 int db_error (char*) ;
 TYPE_1__* db_last_symtab ;
 int db_nsymtab ;
 TYPE_1__* db_symtabs ;
 int strlen (int ) ;
 scalar_t__ strncmp (char const*,int ,int) ;

__attribute__((used)) static c_db_sym_t
db_lookup(const char *symstr)
{
 c_db_sym_t sp;
 int i;
 int symtab_start = 0;
 int symtab_end = db_nsymtab;
 const char *cp;




 for (cp = symstr; *cp; cp++) {
  if (*cp == ':') {
   for (i = 0; i < db_nsymtab; i++) {
    int n = strlen(db_symtabs[i].name);

    if (
        n == (cp - symstr) &&
        strncmp(symstr, db_symtabs[i].name, n) == 0
    ) {
     symtab_start = i;
     symtab_end = i + 1;
     break;
    }
   }
   if (i == db_nsymtab) {
    db_error("invalid symbol table name");
   }
   symstr = cp+1;
  }
 }





 for (i = symtab_start; i < symtab_end; i++) {
  sp = X_db_lookup(&db_symtabs[i], symstr);
  if (sp) {
   db_last_symtab = &db_symtabs[i];
   return sp;
  }
 }
 return 0;
}
