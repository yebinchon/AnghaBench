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
struct fn_field {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct value*) ; 
 scalar_t__ FUNC1 (struct type*) ; 
 scalar_t__ TYPE_CODE_FUNC ; 
 scalar_t__ TYPE_CODE_MEMBER ; 
 scalar_t__ TYPE_CODE_PTR ; 
 scalar_t__ TYPE_CODE_REF ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 scalar_t__ TYPE_CODE_UNION ; 
 struct type* FUNC2 (struct value*) ; 
 struct type* FUNC3 (struct type*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct fn_field* FUNC5 (struct value**,char*,int /*<<< orphan*/ ,struct type*,int*,struct type**,int*) ; 
 struct value* FUNC6 (struct value*) ; 

struct fn_field *
FUNC7 (struct value **argp, char *method, int offset,
			      int *num_fns, struct type **basetype,
			      int *boffset)
{
  struct type *t;

  t = FUNC3 (FUNC2 (*argp));

  /* code snarfed from value_struct_elt */
  while (FUNC1 (t) == TYPE_CODE_PTR || FUNC1 (t) == TYPE_CODE_REF)
    {
      *argp = FUNC6 (*argp);
      /* Don't coerce fn pointer to fn and then back again!  */
      if (FUNC1 (FUNC2 (*argp)) != TYPE_CODE_FUNC)
	FUNC0 (*argp);
      t = FUNC3 (FUNC2 (*argp));
    }

  if (FUNC1 (t) == TYPE_CODE_MEMBER)
    FUNC4 ("Not implemented: member type in value_find_oload_lis");

  if (FUNC1 (t) != TYPE_CODE_STRUCT
      && FUNC1 (t) != TYPE_CODE_UNION)
    FUNC4 ("Attempt to extract a component of a value that is not a struct or union");

  return FUNC5 (argp, method, 0, t, num_fns, basetype, boffset);
}