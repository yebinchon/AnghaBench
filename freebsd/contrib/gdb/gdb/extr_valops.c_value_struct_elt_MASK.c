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
 int /*<<< orphan*/  FUNC0 (struct value*) ; 
 scalar_t__ FUNC1 (struct type*) ; 
 scalar_t__ TYPE_CODE_FUNC ; 
 scalar_t__ TYPE_CODE_MEMBER ; 
 scalar_t__ TYPE_CODE_PTR ; 
 scalar_t__ TYPE_CODE_REF ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 scalar_t__ TYPE_CODE_UNION ; 
 int /*<<< orphan*/  FUNC2 (struct type*,int) ; 
 scalar_t__ FUNC3 (struct type*) ; 
 struct type* FUNC4 (struct value*) ; 
 struct type* FUNC5 (struct type*) ; 
 scalar_t__ FUNC6 (char*,struct type*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ FUNC8 (struct type*,int*,int*) ; 
 struct value* FUNC9 (char*,struct value*,int /*<<< orphan*/ ,struct type*,int /*<<< orphan*/ ) ; 
 struct value* FUNC10 (char*,struct value**,struct value**,int /*<<< orphan*/ ,int*,struct type*) ; 
 struct value* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct value* FUNC12 (struct value*) ; 

struct value *
FUNC13 (struct value **argp, struct value **args,
		  char *name, int *static_memfuncp, char *err)
{
  struct type *t;
  struct value *v;

  FUNC0 (*argp);

  t = FUNC5 (FUNC4 (*argp));

  /* Follow pointers until we get to a non-pointer.  */

  while (FUNC1 (t) == TYPE_CODE_PTR || FUNC1 (t) == TYPE_CODE_REF)
    {
      *argp = FUNC12 (*argp);
      /* Don't coerce fn pointer to fn and then back again!  */
      if (FUNC1 (FUNC4 (*argp)) != TYPE_CODE_FUNC)
	FUNC0 (*argp);
      t = FUNC5 (FUNC4 (*argp));
    }

  if (FUNC1 (t) == TYPE_CODE_MEMBER)
    FUNC7 ("not implemented: member type in value_struct_elt");

  if (FUNC1 (t) != TYPE_CODE_STRUCT
      && FUNC1 (t) != TYPE_CODE_UNION)
    FUNC7 ("Attempt to extract a component of a value that is not a %s.", err);

  /* Assume it's not, unless we see that it is.  */
  if (static_memfuncp)
    *static_memfuncp = 0;

  if (!args)
    {
      /* if there are no arguments ...do this...  */

      /* Try as a field first, because if we succeed, there
         is less work to be done.  */
      v = FUNC9 (name, *argp, 0, t, 0);
      if (v)
	return v;

      /* C++: If it was not found as a data field, then try to
         return it as a pointer to a method.  */

      if (FUNC6 (name, t))
	FUNC7 ("Cannot get value of destructor");

      v = FUNC10 (name, argp, args, 0, static_memfuncp, t);

      if (v == (struct value *) - 1)
	FUNC7 ("Cannot take address of a method");
      else if (v == 0)
	{
	  if (FUNC3 (t))
	    FUNC7 ("There is no member or method named %s.", name);
	  else
	    FUNC7 ("There is no member named %s.", name);
	}
      return v;
    }

  if (FUNC6 (name, t))
    {
      if (!args[1])
	{
	  /* Destructors are a special case.  */
	  int m_index, f_index;

	  v = NULL;
	  if (FUNC8 (t, &m_index, &f_index))
	    {
	      v = FUNC11 (NULL, FUNC2 (t, m_index),
				  f_index, NULL, 0);
	    }
	  if (v == NULL)
	    FUNC7 ("could not find destructor function named %s.", name);
	  else
	    return v;
	}
      else
	{
	  FUNC7 ("destructor should not have any argument");
	}
    }
  else
    v = FUNC10 (name, argp, args, 0, static_memfuncp, t);
  
  if (v == (struct value *) - 1)
    {
      FUNC7 ("One of the arguments you tried to pass to %s could not be converted to what the function wants.", name);
    }
  else if (v == 0)
    {
      /* See if user tried to invoke data as function.  If so,
         hand it back.  If it's not callable (i.e., a pointer to function),
         gdb should give an error.  */
      v = FUNC9 (name, *argp, 0, t, 0);
    }

  if (!v)
    FUNC7 ("Structure has no component named %s.", name);
  return v;
}