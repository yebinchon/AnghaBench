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
struct fn_field {int dummy; } ;
typedef  enum noside { ____Placeholder_noside } noside ;
typedef  int /*<<< orphan*/  VALUE_TYPE ;
typedef  scalar_t__ LONGEST ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*,int) ; 
 int /*<<< orphan*/  DMGL_ANSI ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct type* FUNC2 (struct type*,int) ; 
 int FUNC3 (struct type*,int) ; 
 scalar_t__ FUNC4 (struct type*) ; 
 scalar_t__ TYPE_CODE_PTR ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 scalar_t__ TYPE_CODE_UNION ; 
 int FUNC5 (struct type*,int) ; 
 char* FUNC6 (struct type*,int) ; 
 scalar_t__ FUNC7 (struct type*,int) ; 
 scalar_t__ FUNC8 (struct type*,int) ; 
 struct type* FUNC9 (struct type*,int) ; 
 struct fn_field* FUNC10 (struct type*,int) ; 
 int FUNC11 (struct type*,int) ; 
 char* FUNC12 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct fn_field*,int) ; 
 struct type* FUNC14 (struct fn_field*,int) ; 
 scalar_t__ FUNC15 (struct fn_field*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct fn_field*,int) ; 
 int FUNC17 (struct type*) ; 
 int FUNC18 (struct type*) ; 
 int FUNC19 (struct type*) ; 
 struct type* FUNC20 (struct type*) ; 
 int /*<<< orphan*/  VAR_DOMAIN ; 
 int /*<<< orphan*/  FUNC21 (struct type*,int) ; 
 scalar_t__ FUNC22 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (char*,struct type*) ; 
 int /*<<< orphan*/  FUNC24 (char*,...) ; 
 int /*<<< orphan*/  FUNC25 (struct type*,struct type*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 struct symbol* FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct value* FUNC28 (struct symbol*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (char*,char*) ; 
 scalar_t__ FUNC30 (char*,char*,int) ; 
 struct value* FUNC31 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct value* FUNC32 (struct type*,char*,int) ; 
 struct value* FUNC33 (struct type*,int) ; 

__attribute__((used)) static struct value *
FUNC34 (struct type *domain, int offset,
				struct type *curtype, char *name,
				struct type *intype,
				enum noside noside)
{
  struct type *t = curtype;
  int i;
  struct value *v;

  if (FUNC4 (t) != TYPE_CODE_STRUCT
      && FUNC4 (t) != TYPE_CODE_UNION)
    FUNC24 ("Internal error: non-aggregate type to value_struct_elt_for_reference");

  for (i = FUNC17 (t) - 1; i >= FUNC19 (t); i--)
    {
      char *t_field_name = FUNC6 (t, i);

      if (t_field_name && FUNC29 (t_field_name, name) == 0)
	{
	  if (FUNC8 (t, i))
	    {
	      v = FUNC33 (t, i);
	      if (v == NULL)
		FUNC24 ("static field %s has been optimized out",
		       name);
	      return v;
	    }
	  if (FUNC7 (t, i))
	    FUNC24 ("pointers to bitfield members not allowed");

	  return FUNC31
	    (FUNC26 (FUNC25 (FUNC9 (t, i),
							domain)),
	     offset + (LONGEST) (FUNC5 (t, i) >> 3));
	}
    }

  /* C++: If it was not found as a data field, then try to
     return it as a pointer to a method.  */

  /* Destructors are a special case.  */
  if (FUNC23 (name, t))
    {
      FUNC24 ("member pointers to destructors not implemented yet");
    }

  /* Perform all necessary dereferencing.  */
  while (intype && FUNC4 (intype) == TYPE_CODE_PTR)
    intype = FUNC20 (intype);

  for (i = FUNC18 (t) - 1; i >= 0; --i)
    {
      char *t_field_name = FUNC12 (t, i);
      char dem_opname[64];

      if (FUNC30 (t_field_name, "__", 2) == 0 ||
	  FUNC30 (t_field_name, "op", 2) == 0 ||
	  FUNC30 (t_field_name, "type", 4) == 0)
	{
	  if (FUNC22 (t_field_name, dem_opname, DMGL_ANSI))
	    t_field_name = dem_opname;
	  else if (FUNC22 (t_field_name, dem_opname, 0))
	    t_field_name = dem_opname;
	}
      if (t_field_name && FUNC29 (t_field_name, name) == 0)
	{
	  int j = FUNC11 (t, i);
	  struct fn_field *f = FUNC10 (t, i);

	  FUNC21 (t, i);

	  if (intype == 0 && j > 1)
	    FUNC24 ("non-unique member `%s' requires type instantiation", name);
	  if (intype)
	    {
	      while (j--)
		if (FUNC14 (f, j) == intype)
		  break;
	      if (j < 0)
		FUNC24 ("no member function matches that type instantiation");
	    }
	  else
	    j = 0;

	  if (FUNC15 (f, j))
	    {
	      return FUNC31
		(FUNC26
		 (FUNC25 (FUNC14 (f, j),
				      domain)),
		 (LONGEST) FUNC1 (FUNC16 (f, j)));
	    }
	  else
	    {
	      struct symbol *s = FUNC27 (FUNC13 (f, j),
						0, VAR_DOMAIN, 0, NULL);
	      if (s == NULL)
		{
		  v = 0;
		}
	      else
		{
		  v = FUNC28 (s, 0);
#if 0
		  VALUE_TYPE (v) = lookup_reference_type
		    (lookup_member_type (TYPE_FN_FIELD_TYPE (f, j),
					 domain));
#endif
		}
	      return v;
	    }
	}
    }
  for (i = FUNC19 (t) - 1; i >= 0; i--)
    {
      struct value *v;
      int base_offset;

      if (FUNC0 (t, i))
	base_offset = 0;
      else
	base_offset = FUNC3 (t, i) / 8;
      v = FUNC34 (domain,
					  offset + base_offset,
					  FUNC2 (t, i),
					  name,
					  intype,
					  noside);
      if (v)
	return v;
    }

  /* As a last chance, pretend that CURTYPE is a namespace, and look
     it up that way; this (frequently) works for types nested inside
     classes.  */

  return FUNC32 (curtype, name, noside);
}