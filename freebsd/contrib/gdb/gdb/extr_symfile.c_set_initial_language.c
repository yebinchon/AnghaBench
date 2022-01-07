
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partial_symtab {int * filename; } ;
typedef enum language { ____Placeholder_language } language ;


 int current_language ;
 int deduce_language_from_filename (int *) ;
 int expected_language ;
 struct partial_symtab* find_main_psymtab () ;
 int language_c ;
 int language_unknown ;
 int set_language (int) ;

__attribute__((used)) static void
set_initial_language (void)
{
  struct partial_symtab *pst;
  enum language lang = language_unknown;

  pst = find_main_psymtab ();
  if (pst != ((void*)0))
    {
      if (pst->filename != ((void*)0))
 {
   lang = deduce_language_from_filename (pst->filename);
 }
      if (lang == language_unknown)
 {

   lang = language_c;
 }
      set_language (lang);
      expected_language = current_language;
    }
}
