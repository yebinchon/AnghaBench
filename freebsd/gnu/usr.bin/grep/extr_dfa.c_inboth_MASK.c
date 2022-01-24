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
 char** FUNC0 (char**,char**) ; 
 char** FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static char **
FUNC5 (char **left, char **right)
{
  char **both;
  char **temp;
  int lnum, rnum;

  if (left == NULL || right == NULL)
    return NULL;
  both = (char **) FUNC4(sizeof *both);
  if (both == NULL)
    return NULL;
  both[0] = NULL;
  for (lnum = 0; left[lnum] != NULL; ++lnum)
    {
      for (rnum = 0; right[rnum] != NULL; ++rnum)
	{
	  temp = FUNC1(left[lnum], right[rnum]);
	  if (temp == NULL)
	    {
	      FUNC3(both);
	      return NULL;
	    }
	  both = FUNC0(both, temp);
	  FUNC3(temp);
	  FUNC2(temp);
	  if (both == NULL)
	    return NULL;
	}
    }
  return both;
}