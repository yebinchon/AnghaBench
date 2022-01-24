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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 size_t FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 char* FUNC4 (size_t) ; 
 scalar_t__ FUNC5 (char*,int) ; 

__attribute__((used)) static void
FUNC6 (const char *fname, char *text, char *word,
		      char ***list, int *list_used, int *list_alloced)
{
  char *new;
  size_t fnlen = FUNC2 (fname);

  if (*list_used + 1 >= *list_alloced)
    {
      *list_alloced *= 2;
      *list = (char **) FUNC5 ((char *) *list,
				  *list_alloced * sizeof (char *));
    }

  if (word == text)
    {
      /* Return exactly fname.  */
      new = FUNC4 (fnlen + 5);
      FUNC1 (new, fname);
    }
  else if (word > text)
    {
      /* Return some portion of fname.  */
      new = FUNC4 (fnlen + 5);
      FUNC1 (new, fname + (word - text));
    }
  else
    {
      /* Return some of TEXT plus fname.  */
      new = FUNC4 (fnlen + (text - word) + 5);
      FUNC3 (new, word, text - word);
      new[text - word] = '\0';
      FUNC0 (new, fname);
    }
  (*list)[*list_used] = new;
  (*list)[++*list_used] = NULL;
}