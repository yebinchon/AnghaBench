#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct minimal_symbol {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct minimal_symbol*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 
 char* FUNC6 (char*,unsigned int) ; 

__attribute__((used)) static void
FUNC7 (struct minimal_symbol *msymbol, char *sym_text,
			     int sym_text_len, char *text, char *word)
{
  static char *tmp = NULL;
  static unsigned int tmplen = 0;
    
  char *method, *category, *selector;
  char *tmp2 = NULL;
    
  method = FUNC0 (msymbol);

  /* Is it a method?  */
  if ((method[0] != '-') && (method[0] != '+'))
    return;

  if (sym_text[0] == '[')
    /* Complete on shortened method method.  */
    FUNC1 (method + 1, sym_text, sym_text_len, text, word);
    
  while ((FUNC5 (method) + 1) >= tmplen)
    {
      if (tmplen == 0)
	tmplen = 1024;
      else
	tmplen *= 2;
      tmp = FUNC6 (tmp, tmplen);
    }
  selector = FUNC3 (method, ' ');
  if (selector != NULL)
    selector++;
    
  category = FUNC3 (method, '(');
    
  if ((category != NULL) && (selector != NULL))
    {
      FUNC2 (tmp, method, (category - method));
      tmp[category - method] = ' ';
      FUNC2 (tmp + (category - method) + 1, selector, FUNC5 (selector) + 1);
      FUNC1 (tmp, sym_text, sym_text_len, text, word);
      if (sym_text[0] == '[')
	FUNC1 (tmp + 1, sym_text, sym_text_len, text, word);
    }
    
  if (selector != NULL)
    {
      /* Complete on selector only.  */
      FUNC4 (tmp, selector);
      tmp2 = FUNC3 (tmp, ']');
      if (tmp2 != NULL)
	*tmp2 = '\0';
	
      FUNC1 (tmp, sym_text, sym_text_len, text, word);
    }
}