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
 char** FUNC0 (char**,char*,size_t) ; 
 scalar_t__ FUNC1 (int) ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static char **
FUNC3 (char *left, char *right)
{
  char **cpp;
  char *lcp;
  char *rcp;
  size_t i, len;

  if (left == NULL || right == NULL)
    return NULL;
  cpp = (char **) FUNC1(sizeof *cpp);
  if (cpp == NULL)
    return NULL;
  cpp[0] = NULL;
  for (lcp = left; *lcp != '\0'; ++lcp)
    {
      len = 0;
      rcp = FUNC2 (right, *lcp);
      while (rcp != NULL)
	{
	  for (i = 1; lcp[i] != '\0' && lcp[i] == rcp[i]; ++i)
	    continue;
	  if (i > len)
	    len = i;
	  rcp = FUNC2 (rcp + 1, *lcp);
	}
      if (len == 0)
	continue;
      if ((cpp = FUNC0(cpp, lcp, len)) == NULL)
	break;
    }
  return cpp;
}