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
struct symbol {int dummy; } ;
struct fn_field {int /*<<< orphan*/  type; } ;
struct cleanup {int dummy; } ;
typedef  struct symbol* badness_vector ;
typedef  enum oload_classification { ____Placeholder_oload_classification } oload_classification ;

/* Variables and functions */
#define  INCOMPATIBLE 129 
#define  NON_STANDARD 128 
 char* FUNC0 (struct symbol*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_CODE_PTR ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct fn_field*,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct value*) ; 
 int FUNC7 (struct symbol**,int,int) ; 
 char* FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,...) ; 
 int FUNC11 (struct type**,int,int,int,struct fn_field*,struct symbol**,struct symbol***) ; 
 int FUNC12 (struct type**,int,char*,char const*,struct symbol***,struct symbol***) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 struct cleanup* FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int FUNC15 (int,struct fn_field*,int) ; 
 struct value* FUNC16 (struct value*) ; 
 struct fn_field* FUNC17 (struct value**,char*,int /*<<< orphan*/ ,int*,struct type**,int*) ; 
 struct value* FUNC18 (struct value**,struct fn_field*,int,struct type*,int) ; 
 struct value* FUNC19 (struct value**,struct fn_field*,int,struct type*,int) ; 
 int /*<<< orphan*/  FUNC20 (char*,char const*,...) ; 
 int /*<<< orphan*/  xfree ; 

int
FUNC21 (struct type **arg_types, int nargs, char *name, int method,
		     int lax, struct value **objp, struct symbol *fsym,
		     struct value **valp, struct symbol **symp, int *staticp)
{
  struct value *obj = (objp ? *objp : NULL);

  int oload_champ;		/* Index of best overloaded function */

  struct badness_vector *oload_champ_bv = NULL;		/* The measure for the current best match */

  struct value *temp = obj;
  struct fn_field *fns_ptr = NULL;	/* For methods, the list of overloaded methods */
  struct symbol **oload_syms = NULL;	/* For non-methods, the list of overloaded function symbols */
  int num_fns = 0;		/* Number of overloaded instances being considered */
  struct type *basetype = NULL;
  int boffset;
  int ix;
  int static_offset;
  struct cleanup *old_cleanups = NULL;

  const char *obj_type_name = NULL;
  char *func_name = NULL;
  enum oload_classification match_quality;

  /* Get the list of overloaded methods or functions */
  if (method)
    {
      obj_type_name = FUNC4 (FUNC6 (obj));
      /* Hack: evaluate_subexp_standard often passes in a pointer
         value rather than the object itself, so try again */
      if ((!obj_type_name || !*obj_type_name) &&
	  (FUNC1 (FUNC6 (obj)) == TYPE_CODE_PTR))
	obj_type_name = FUNC4 (FUNC5 (FUNC6 (obj)));

      fns_ptr = FUNC17 (&temp, name, 0,
					      &num_fns,
					      &basetype, &boffset);
      if (!fns_ptr || !num_fns)
	FUNC10 ("Couldn't find method %s%s%s",
	       obj_type_name,
	       (obj_type_name && *obj_type_name) ? "::" : "",
	       name);
      /* If we are dealing with stub method types, they should have
	 been resolved by find_method_list via value_find_oload_method_list
	 above.  */
      FUNC13 (FUNC2 (fns_ptr[0].type) != NULL);
      oload_champ = FUNC11 (arg_types, nargs, method, num_fns,
				      fns_ptr, oload_syms, &oload_champ_bv);
    }
  else
    {
      const char *qualified_name = FUNC0 (fsym);
      func_name	= FUNC8 (qualified_name);

      /* If the name is NULL this must be a C-style function.
         Just return the same symbol. */
      if (func_name == NULL)
        {
	  *symp = fsym;
          return 0;
        }

      old_cleanups = FUNC14 (xfree, func_name);
      FUNC14 (xfree, oload_syms);
      FUNC14 (xfree, oload_champ_bv);

      oload_champ = FUNC12 (arg_types, nargs,
						func_name,
						qualified_name,
						&oload_syms,
						&oload_champ_bv);
    }

  /* Check how bad the best match is.  */

  match_quality
    = FUNC7 (oload_champ_bv, nargs,
			    FUNC15 (method, fns_ptr,
						 oload_champ));

  if (match_quality == INCOMPATIBLE)
    {
      if (method)
	FUNC10 ("Cannot resolve method %s%s%s to any overloaded instance",
	       obj_type_name,
	       (obj_type_name && *obj_type_name) ? "::" : "",
	       name);
      else
	FUNC10 ("Cannot resolve function %s to any overloaded instance",
	       func_name);
    }
  else if (match_quality == NON_STANDARD)
    {
      if (method)
	FUNC20 ("Using non-standard conversion to match method %s%s%s to supplied arguments",
		 obj_type_name,
		 (obj_type_name && *obj_type_name) ? "::" : "",
		 name);
      else
	FUNC20 ("Using non-standard conversion to match function %s to supplied arguments",
		 func_name);
    }

  if (method)
    {
      if (staticp != NULL)
	*staticp = FUNC15 (method, fns_ptr, oload_champ);
      if (FUNC3 (fns_ptr, oload_champ))
	*valp = FUNC19 (&temp, fns_ptr, oload_champ, basetype, boffset);
      else
	*valp = FUNC18 (&temp, fns_ptr, oload_champ, basetype, boffset);
    }
  else
    {
      *symp = oload_syms[oload_champ];
    }

  if (objp)
    {
      if (FUNC1 (FUNC6 (temp)) != TYPE_CODE_PTR
	  && FUNC1 (FUNC6 (*objp)) == TYPE_CODE_PTR)
	{
	  temp = FUNC16 (temp);
	}
      *objp = temp;
    }
  if (old_cleanups != NULL)
    FUNC9 (old_cleanups);

  switch (match_quality)
    {
    case INCOMPATIBLE:
      return 100;
    case NON_STANDARD:
      return 10;
    default:				/* STANDARD */
      return 0;
    }
}