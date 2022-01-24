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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,int) ; 

__attribute__((used)) static char **
FUNC5 (char **cpp, char *new, size_t len)
{
  int i, j;

  if (cpp == NULL)
    return NULL;
  if ((new = FUNC2(new)) == NULL)
    {
      FUNC1(cpp);
      return NULL;
    }
  new[len] = '\0';
  /* Is there already something in the list that's new (or longer)? */
  for (i = 0; cpp[i] != NULL; ++i)
    if (FUNC3(cpp[i], new) != NULL)
      {
	FUNC0(new);
	return cpp;
      }
  /* Eliminate any obsoleted strings. */
  j = 0;
  while (cpp[j] != NULL)
    if (FUNC3(new, cpp[j]) == NULL)
      ++j;
    else
      {
	FUNC0(cpp[j]);
	if (--i == j)
	  break;
	cpp[j] = cpp[i];
	cpp[i] = NULL;
      }
  /* Add the new string. */
  cpp = (char **) FUNC4((char *) cpp, (i + 2) * sizeof *cpp);
  if (cpp == NULL)
    return NULL;
  cpp[i] = new;
  cpp[i + 1] = NULL;
  return cpp;
}