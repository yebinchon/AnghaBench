
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol_search {int * msymbol; TYPE_1__* symtab; int block; int * symbol; struct symbol_search* next; } ;
struct cleanup {int dummy; } ;
struct TYPE_2__ {char* filename; } ;


 int FUNCTIONS_DOMAIN ;
 char* SYMBOL_LINKAGE_NAME (int *) ;
 int SYMBOL_PRINT_NAME (int *) ;
 char* alloca (scalar_t__) ;
 int break_command (char*,int) ;
 int do_cleanups (struct cleanup*) ;
 struct cleanup* make_cleanup_free_search_symbols (struct symbol_search*) ;
 int print_symbol_info (int ,TYPE_1__*,int *,int ,char*) ;
 int printf_filtered (char*,int ) ;
 int search_symbols (char*,int ,int ,char**,struct symbol_search**) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void
rbreak_command (char *regexp, int from_tty)
{
  struct symbol_search *ss;
  struct symbol_search *p;
  struct cleanup *old_chain;

  search_symbols (regexp, FUNCTIONS_DOMAIN, 0, (char **) ((void*)0), &ss);
  old_chain = make_cleanup_free_search_symbols (ss);

  for (p = ss; p != ((void*)0); p = p->next)
    {
      if (p->msymbol == ((void*)0))
 {
   char *string = alloca (strlen (p->symtab->filename)
     + strlen (SYMBOL_LINKAGE_NAME (p->symbol))
     + 4);
   strcpy (string, p->symtab->filename);
   strcat (string, ":'");
   strcat (string, SYMBOL_LINKAGE_NAME (p->symbol));
   strcat (string, "'");
   break_command (string, from_tty);
   print_symbol_info (FUNCTIONS_DOMAIN,
        p->symtab,
        p->symbol,
        p->block,
        p->symtab->filename);
 }
      else
 {
   break_command (SYMBOL_LINKAGE_NAME (p->msymbol), from_tty);
   printf_filtered ("<function, no debug info> %s;\n",
      SYMBOL_PRINT_NAME (p->msymbol));
 }
    }

  do_cleanups (old_chain);
}
