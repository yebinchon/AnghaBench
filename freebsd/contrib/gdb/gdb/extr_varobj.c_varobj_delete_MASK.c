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
struct varobj {int dummy; } ;
struct cpstack {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct cpstack**) ; 
 int /*<<< orphan*/  FUNC1 (struct cpstack**,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct cpstack**,struct varobj*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 char** FUNC4 (int) ; 

int
FUNC5 (struct varobj *var, char ***dellist, int only_children)
{
  int delcount;
  int mycount;
  struct cpstack *result = NULL;
  char **cp;

  /* Initialize a stack for temporary results */
  FUNC1 (&result, NULL);

  if (only_children)
    /* Delete only the variable children */
    delcount = FUNC2 (&result, var, 1 /* only the children */ );
  else
    /* Delete the variable and all its children */
    delcount = FUNC2 (&result, var, 0 /* parent+children */ );

  /* We may have been asked to return a list of what has been deleted */
  if (dellist != NULL)
    {
      *dellist = FUNC4 ((delcount + 1) * sizeof (char *));

      cp = *dellist;
      mycount = delcount;
      *cp = FUNC0 (&result);
      while ((*cp != NULL) && (mycount > 0))
	{
	  mycount--;
	  cp++;
	  *cp = FUNC0 (&result);
	}

      if (mycount || (*cp != NULL))
	FUNC3 ("varobj_delete: assertion failed - mycount(=%d) <> 0",
		 mycount);
    }

  return delcount;
}