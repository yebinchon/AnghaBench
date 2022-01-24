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
struct cleanup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 struct cleanup* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  uiout ; 
 int /*<<< orphan*/  FUNC5 (struct varobj*) ; 
 char* FUNC6 (struct varobj*) ; 
 char* FUNC7 (struct varobj*) ; 
 int FUNC8 (struct varobj**,struct varobj***) ; 
 int /*<<< orphan*/  FUNC9 (struct varobj**) ; 

__attribute__((used)) static int
FUNC10 (struct varobj *var)
{
  struct varobj **changelist;
  struct varobj **cc;
  struct cleanup *cleanup = NULL;
  int nc;

  nc = FUNC8 (&var, &changelist);

  /* nc == 0 means that nothing has changed.
     nc == -1 means that an error occured in updating the variable.
     nc == -2 means the variable has changed type. */
  
  if (nc == 0)
    return 1;
  else if (nc == -1)
    {
      if (FUNC2 (uiout) > 1)
        cleanup = FUNC1 (uiout, NULL);
      FUNC4 (uiout, "name", FUNC6(var));
      FUNC4 (uiout, "in_scope", "false");
      if (FUNC2 (uiout) > 1)
        FUNC0 (cleanup);
      return -1;
    }
  else if (nc == -2)
    {
      if (FUNC2 (uiout) > 1)
        cleanup = FUNC1 (uiout, NULL);
      FUNC4 (uiout, "name", FUNC6 (var));
      FUNC4 (uiout, "in_scope", "true");
      FUNC4 (uiout, "new_type", FUNC7(var));
      FUNC3 (uiout, "new_num_children", 
			   FUNC5(var));
      if (FUNC2 (uiout) > 1)
        FUNC0 (cleanup);
    }
  else
    {
      
      cc = changelist;
      while (*cc != NULL)
	{
	  if (FUNC2 (uiout) > 1)
	    cleanup = FUNC1 (uiout, NULL);
	  FUNC4 (uiout, "name", FUNC6 (*cc));
	  FUNC4 (uiout, "in_scope", "true");
	  FUNC4 (uiout, "type_changed", "false");
	  if (FUNC2 (uiout) > 1)
	    FUNC0 (cleanup);
	  cc++;
	}
      FUNC9 (changelist);
      return 1;
    }
  return 1;
}