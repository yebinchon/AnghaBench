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
struct varobj {struct varobj* obj_name; struct varobj* name; struct varobj* root; int /*<<< orphan*/  exp; struct varobj* rootvar; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (struct varobj*) ; 

__attribute__((used)) static void
FUNC2 (struct varobj *var)
{
  /* Free the expression if this is a root variable. */
  if (var->root->rootvar == var)
    {
      FUNC0 ((char **) &var->root->exp);
      FUNC1 (var->root);
    }

  FUNC1 (var->name);
  FUNC1 (var->obj_name);
  FUNC1 (var);
}