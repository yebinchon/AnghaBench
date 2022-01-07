
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minimal_symbol {int dummy; } ;


 char* SYMBOL_NATURAL_NAME (struct minimal_symbol*) ;
 int completion_list_add_name (char*,char*,int,char*,char*) ;
 int memcpy (char*,char*,int) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 char* xrealloc (char*,unsigned int) ;

__attribute__((used)) static void
completion_list_objc_symbol (struct minimal_symbol *msymbol, char *sym_text,
        int sym_text_len, char *text, char *word)
{
  static char *tmp = ((void*)0);
  static unsigned int tmplen = 0;

  char *method, *category, *selector;
  char *tmp2 = ((void*)0);

  method = SYMBOL_NATURAL_NAME (msymbol);


  if ((method[0] != '-') && (method[0] != '+'))
    return;

  if (sym_text[0] == '[')

    completion_list_add_name (method + 1, sym_text, sym_text_len, text, word);

  while ((strlen (method) + 1) >= tmplen)
    {
      if (tmplen == 0)
 tmplen = 1024;
      else
 tmplen *= 2;
      tmp = xrealloc (tmp, tmplen);
    }
  selector = strchr (method, ' ');
  if (selector != ((void*)0))
    selector++;

  category = strchr (method, '(');

  if ((category != ((void*)0)) && (selector != ((void*)0)))
    {
      memcpy (tmp, method, (category - method));
      tmp[category - method] = ' ';
      memcpy (tmp + (category - method) + 1, selector, strlen (selector) + 1);
      completion_list_add_name (tmp, sym_text, sym_text_len, text, word);
      if (sym_text[0] == '[')
 completion_list_add_name (tmp + 1, sym_text, sym_text_len, text, word);
    }

  if (selector != ((void*)0))
    {

      strcpy (tmp, selector);
      tmp2 = strchr (tmp, ']');
      if (tmp2 != ((void*)0))
 *tmp2 = '\0';

      completion_list_add_name (tmp, sym_text, sym_text_len, text, word);
    }
}
