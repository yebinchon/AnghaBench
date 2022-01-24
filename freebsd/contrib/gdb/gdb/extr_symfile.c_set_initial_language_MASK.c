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
struct partial_symtab {int /*<<< orphan*/ * filename; } ;
typedef  enum language { ____Placeholder_language } language ;

/* Variables and functions */
 int /*<<< orphan*/  current_language ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  expected_language ; 
 struct partial_symtab* FUNC1 () ; 
 int language_c ; 
 int language_unknown ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3 (void)
{
  struct partial_symtab *pst;
  enum language lang = language_unknown;

  pst = FUNC1 ();
  if (pst != NULL)
    {
      if (pst->filename != NULL)
	{
	  lang = FUNC0 (pst->filename);
	}
      if (lang == language_unknown)
	{
	  /* Make C the default language */
	  lang = language_c;
	}
      FUNC2 (lang);
      expected_language = current_language;	/* Don't warn the user */
    }
}