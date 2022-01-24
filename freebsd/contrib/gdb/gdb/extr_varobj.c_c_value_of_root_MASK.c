#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct varobj {int error; TYPE_1__* root; } ;
struct value {int dummy; } ;
struct frame_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  exp; int /*<<< orphan*/  frame; int /*<<< orphan*/ * valid_block; struct varobj* rootvar; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct value*) ; 
 struct frame_info* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct value**) ; 
 int /*<<< orphan*/  FUNC3 (struct value*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct value*) ; 
 int /*<<< orphan*/  FUNC6 (struct frame_info*) ; 

__attribute__((used)) static struct value *
FUNC7 (struct varobj **var_handle)
{
  struct value *new_val;
  struct varobj *var = *var_handle;
  struct frame_info *fi;
  int within_scope;

  /*  Only root variables can be updated... */
  if (var->root->rootvar != var)
    /* Not a root var */
    return NULL;


  /* Determine whether the variable is still around. */
  if (var->root->valid_block == NULL)
    within_scope = 1;
  else
    {
      FUNC4 ();
      fi = FUNC1 (var->root->frame);
      within_scope = fi != NULL;
      /* FIXME: select_frame could fail */
      if (within_scope)
	FUNC6 (fi);
    }

  if (within_scope)
    {
      /* We need to catch errors here, because if evaluate
         expression fails we just want to make val->error = 1 and
         go on */
      if (FUNC2 (var->root->exp, &new_val))
	{
	  if (FUNC0 (new_val))
	    {
	      /* We need to catch errors because if
	         value_fetch_lazy fails we still want to continue
	         (after making val->error = 1) */
	      /* FIXME: Shouldn't be using VALUE_CONTENTS?  The
	         comment on value_fetch_lazy() says it is only
	         called from the macro... */
	      if (!FUNC3 (new_val))
		var->error = 1;
	      else
		var->error = 0;
	    }
	}
      else
	var->error = 1;

      FUNC5 (new_val);
      return new_val;
    }

  return NULL;
}