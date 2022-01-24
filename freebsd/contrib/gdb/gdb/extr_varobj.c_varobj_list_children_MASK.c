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
struct varobj {int num_children; } ;

/* Variables and functions */
 struct varobj* FUNC0 (struct varobj*,char*) ; 
 struct varobj* FUNC1 (struct varobj*,int,char*) ; 
 char* FUNC2 (struct varobj*,int) ; 
 int FUNC3 (struct varobj*) ; 
 struct varobj** FUNC4 (int) ; 

int
FUNC5 (struct varobj *var, struct varobj ***childlist)
{
  struct varobj *child;
  char *name;
  int i;

  /* sanity check: have we been passed a pointer? */
  if (childlist == NULL)
    return -1;

  *childlist = NULL;

  if (var->num_children == -1)
    var->num_children = FUNC3 (var);

  /* List of children */
  *childlist = FUNC4 ((var->num_children + 1) * sizeof (struct varobj *));

  for (i = 0; i < var->num_children; i++)
    {
      /* Mark as the end in case we bail out */
      *((*childlist) + i) = NULL;

      /* check if child exists, if not create */
      name = FUNC2 (var, i);
      child = FUNC0 (var, name);
      if (child == NULL)
	child = FUNC1 (var, i, name);

      *((*childlist) + i) = child;
    }

  /* End of list is marked by a NULL pointer */
  *((*childlist) + i) = NULL;

  return var->num_children;
}