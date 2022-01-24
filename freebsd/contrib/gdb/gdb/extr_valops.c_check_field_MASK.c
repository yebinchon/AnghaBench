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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 int /*<<< orphan*/  FUNC1 (struct value*) ; 
 scalar_t__ FUNC2 (struct type*) ; 
 scalar_t__ TYPE_CODE_MEMBER ; 
 scalar_t__ TYPE_CODE_PTR ; 
 scalar_t__ TYPE_CODE_REF ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 scalar_t__ TYPE_CODE_UNION ; 
 struct type* FUNC3 (struct type*) ; 
 struct type* FUNC4 (struct value*) ; 
 int FUNC5 (struct type*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int
FUNC7 (struct value *arg1, const char *name)
{
  struct type *t;

  FUNC1 (arg1);

  t = FUNC4 (arg1);

  /* Follow pointers until we get to a non-pointer.  */

  for (;;)
    {
      FUNC0 (t);
      if (FUNC2 (t) != TYPE_CODE_PTR && FUNC2 (t) != TYPE_CODE_REF)
	break;
      t = FUNC3 (t);
    }

  if (FUNC2 (t) == TYPE_CODE_MEMBER)
    FUNC6 ("not implemented: member type in check_field");

  if (FUNC2 (t) != TYPE_CODE_STRUCT
      && FUNC2 (t) != TYPE_CODE_UNION)
    FUNC6 ("Internal error: `this' is not an aggregate");

  return FUNC5 (t, name);
}