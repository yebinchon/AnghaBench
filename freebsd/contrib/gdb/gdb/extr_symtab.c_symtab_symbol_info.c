
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol_search {TYPE_1__* symtab; int block; int symbol; int * msymbol; struct symbol_search* next; } ;
struct cleanup {int dummy; } ;
typedef scalar_t__ domain_enum ;
struct TYPE_2__ {char* filename; } ;


 int QUIT ;
 scalar_t__ VARIABLES_DOMAIN ;
 int do_cleanups (struct cleanup*) ;
 struct cleanup* make_cleanup_free_search_symbols (struct symbol_search*) ;
 int print_msymbol_info (int *) ;
 int print_symbol_info (scalar_t__,TYPE_1__*,int ,int ,char*) ;
 int printf_filtered (char*,...) ;
 int search_symbols (char*,scalar_t__,int ,char**,struct symbol_search**) ;

__attribute__((used)) static void
symtab_symbol_info (char *regexp, domain_enum kind, int from_tty)
{
  static char *classnames[]
  =
  {"variable", "function", "type", "method"};
  struct symbol_search *symbols;
  struct symbol_search *p;
  struct cleanup *old_chain;
  char *last_filename = ((void*)0);
  int first = 1;


  search_symbols (regexp, kind, 0, (char **) ((void*)0), &symbols);
  old_chain = make_cleanup_free_search_symbols (symbols);

  printf_filtered (regexp
     ? "All %ss matching regular expression \"%s\":\n"
     : "All defined %ss:\n",
     classnames[(int) (kind - VARIABLES_DOMAIN)], regexp);

  for (p = symbols; p != ((void*)0); p = p->next)
    {
      QUIT;

      if (p->msymbol != ((void*)0))
 {
   if (first)
     {
       printf_filtered ("\nNon-debugging symbols:\n");
       first = 0;
     }
   print_msymbol_info (p->msymbol);
 }
      else
 {
   print_symbol_info (kind,
        p->symtab,
        p->symbol,
        p->block,
        last_filename);
   last_filename = p->symtab->filename;
 }
    }

  do_cleanups (old_chain);
}
