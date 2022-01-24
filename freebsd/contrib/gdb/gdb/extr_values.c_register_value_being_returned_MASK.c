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
struct value {int dummy; } ;
struct type {int dummy; } ;
struct regcache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 int /*<<< orphan*/  FUNC1 (struct type*,struct regcache*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RETURN_VALUE_REGISTER_CONVENTION ; 
 scalar_t__ FUNC2 (struct type*) ; 
 scalar_t__ TYPE_CODE_VOID ; 
 int /*<<< orphan*/ * FUNC3 (struct value*) ; 
 struct value* FUNC4 (struct type*) ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct type*,struct regcache*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

struct value *
FUNC8 (struct type *valtype, struct regcache *retbuf)
{
  struct value *val = FUNC4 (valtype);

  /* If the function returns void, don't bother fetching the return
     value.  See also "using_struct_return".  */
  if (FUNC2 (valtype) == TYPE_CODE_VOID)
    return val;

  if (!FUNC7 (current_gdbarch))
    {
      /* NOTE: cagney/2003-10-20: Unlike "gdbarch_return_value", the
         EXTRACT_RETURN_VALUE and USE_STRUCT_CONVENTION methods do not
         handle the edge case of a function returning a small
         structure / union in registers.  */
      FUNC0 (valtype);
      FUNC1 (valtype, retbuf, FUNC3 (val));
      return val;
    }

  /* This function only handles "register convention".  */
  FUNC5 (FUNC6 (current_gdbarch, valtype,
				    NULL, NULL, NULL)
	      == RETURN_VALUE_REGISTER_CONVENTION);
  FUNC6 (current_gdbarch, valtype, retbuf,
			FUNC3 (val) /*read*/, NULL /*write*/);
  return val;
}