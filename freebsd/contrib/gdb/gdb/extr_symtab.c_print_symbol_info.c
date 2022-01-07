
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {char* filename; } ;
struct symbol {int dummy; } ;
typedef scalar_t__ domain_enum ;


 scalar_t__ LOC_TYPEDEF ;
 int STATIC_BLOCK ;
 scalar_t__ STRUCT_DOMAIN ;
 scalar_t__ SYMBOL_CLASS (struct symbol*) ;
 scalar_t__ SYMBOL_DOMAIN (struct symbol*) ;
 char* SYMBOL_PRINT_NAME (struct symbol*) ;
 int SYMBOL_TYPE (struct symbol*) ;
 scalar_t__ TYPES_DOMAIN ;
 int fputs_filtered (char*,int ) ;
 int gdb_stdout ;
 int printf_filtered (char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int type_print (int ,char*,int ,int ) ;
 int typedef_print (int ,struct symbol*,int ) ;

__attribute__((used)) static void
print_symbol_info (domain_enum kind, struct symtab *s, struct symbol *sym,
     int block, char *last)
{
  if (last == ((void*)0) || strcmp (last, s->filename) != 0)
    {
      fputs_filtered ("\nFile ", gdb_stdout);
      fputs_filtered (s->filename, gdb_stdout);
      fputs_filtered (":\n", gdb_stdout);
    }

  if (kind != TYPES_DOMAIN && block == STATIC_BLOCK)
    printf_filtered ("static ");


  if (kind == TYPES_DOMAIN
      && SYMBOL_DOMAIN (sym) != STRUCT_DOMAIN)
    typedef_print (SYMBOL_TYPE (sym), sym, gdb_stdout);

  else if (kind < TYPES_DOMAIN ||
    (kind == TYPES_DOMAIN &&
     SYMBOL_DOMAIN (sym) == STRUCT_DOMAIN))
    {
      type_print (SYMBOL_TYPE (sym),
    (SYMBOL_CLASS (sym) == LOC_TYPEDEF
     ? "" : SYMBOL_PRINT_NAME (sym)),
    gdb_stdout, 0);

      printf_filtered (";\n");
    }
}
