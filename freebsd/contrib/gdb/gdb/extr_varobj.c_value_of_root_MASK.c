#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct varobj {TYPE_2__* root; int /*<<< orphan*/  obj_name; int /*<<< orphan*/  name; } ;
struct value {int dummy; } ;
struct TYPE_4__ {TYPE_1__* lang; scalar_t__ use_selected_frame; struct varobj* rootvar; } ;
struct TYPE_3__ {struct value* (* value_of_root ) (struct varobj**) ;} ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  USE_SELECTED_FRAME ; 
 int /*<<< orphan*/  FUNC0 (struct varobj*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct value* FUNC4 (struct varobj**) ; 
 struct varobj* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct varobj*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 char* FUNC8 (struct varobj*) ; 

__attribute__((used)) static struct value *
FUNC9 (struct varobj **var_handle, int *type_changed)
{
  struct varobj *var;

  if (var_handle == NULL)
    return NULL;

  var = *var_handle;

  /* This should really be an exception, since this should
     only get called with a root variable. */

  if (var->root->rootvar != var)
    return NULL;

  if (var->root->use_selected_frame)
    {
      struct varobj *tmp_var;
      char *old_type, *new_type;
      old_type = FUNC8 (var);
      tmp_var = FUNC5 (NULL, var->name, (CORE_ADDR) 0,
			       USE_SELECTED_FRAME);
      if (tmp_var == NULL)
	{
	  return NULL;
	}
      new_type = FUNC8 (tmp_var);
      if (FUNC2 (old_type, new_type) == 0)
	{
	  FUNC6 (tmp_var, NULL, 0);
	  *type_changed = 0;
	}
      else
	{
	  if (*type_changed)
	    {
	      tmp_var->obj_name =
		FUNC1 (var->obj_name, FUNC3 (var->obj_name));
	      FUNC6 (var, NULL, 0);
	    }
	  else
	    {
	      tmp_var->obj_name = FUNC7 ();
	    }
	  FUNC0 (tmp_var);
	  *var_handle = tmp_var;
	  var = *var_handle;
	  *type_changed = 1;
	}
    }
  else
    {
      *type_changed = 0;
    }

  return (*var->root->lang->value_of_root) (var_handle);
}