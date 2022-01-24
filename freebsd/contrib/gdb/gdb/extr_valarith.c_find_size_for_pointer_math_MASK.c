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
struct type {int dummy; } ;
typedef  int LONGEST ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_VOID ; 
 int FUNC1 (struct type*) ; 
 char* FUNC2 (struct type*) ; 
 char* FUNC3 (struct type*) ; 
 int /*<<< orphan*/  FUNC4 (struct type*) ; 
 struct type* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static LONGEST
FUNC7 (struct type *ptr_type)
{
  LONGEST sz = -1;
  struct type *ptr_target;

  ptr_target = FUNC5 (FUNC4 (ptr_type));

  sz = FUNC1 (ptr_target);
  if (sz == 0)
    {
      if (FUNC0 (ptr_type) == TYPE_CODE_VOID)
	sz = 1;
      else
	{
	  char *name;
	  
	  name = FUNC2 (ptr_target);
	  if (name == NULL)
	    name = FUNC3 (ptr_target);
	  if (name == NULL)
	    FUNC6 ("Cannot perform pointer math on incomplete types, "
		   "try casting to a known type, or void *.");
	  else
	    FUNC6 ("Cannot perform pointer math on incomplete type \"%s\", "
		   "try casting to a known type, or void *.", name);
	}
    }
  return sz;
}