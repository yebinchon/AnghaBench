
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* start; char* end; char* name; char* private; } ;


 size_t MAXNOSYMTABS ;
 size_t db_nsymtab ;
 TYPE_1__* db_symtabs ;
 int panic (char*) ;
 int printf (char*,char*) ;

void
db_add_symbol_table(char *start, char *end, char *name, char *ref)
{
 if (db_nsymtab >= MAXNOSYMTABS) {
  printf ("No slots left for %s symbol table", name);
  panic ("db_sym.c: db_add_symbol_table");
 }

 db_symtabs[db_nsymtab].start = start;
 db_symtabs[db_nsymtab].end = end;
 db_symtabs[db_nsymtab].name = name;
 db_symtabs[db_nsymtab].private = ref;
 db_nsymtab++;
}
