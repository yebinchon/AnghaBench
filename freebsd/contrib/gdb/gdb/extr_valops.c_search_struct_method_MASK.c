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
 scalar_t__ FUNC0 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct type*) ; 
 int /*<<< orphan*/  DMGL_ANSI ; 
 struct type* FUNC2 (struct type*,int) ; 
 int FUNC3 (struct type*,int) ; 
 struct fn_field* FUNC4 (struct type*,int) ; 
 int FUNC5 (struct type*,int) ; 
 char* FUNC6 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct fn_field*,int) ; 
 scalar_t__ FUNC8 (struct fn_field*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct fn_field*,int) ; 
 scalar_t__ FUNC10 (struct fn_field*,int) ; 
 scalar_t__ FUNC11 (struct type*) ; 
 int FUNC12 (struct type*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct type*) ; 
 int FUNC15 (struct type*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct value*) ; 
 char* FUNC18 (struct value*) ; 
 int /*<<< orphan*/  FUNC19 (struct value*) ; 
 scalar_t__ FUNC20 (struct value*) ; 
 scalar_t__ FUNC21 (struct value*) ; 
 scalar_t__ FUNC22 (int) ; 
 int FUNC23 (struct type*,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (struct type*,int) ; 
 struct type* FUNC25 (struct type*) ; 
 scalar_t__ FUNC26 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (char*,...) ; 
 int /*<<< orphan*/  FUNC28 (struct type*,struct type*,int /*<<< orphan*/ ,scalar_t__,int*,int*) ; 
 scalar_t__ FUNC29 (char*,char*) ; 
 scalar_t__ FUNC30 (char*,char*,int) ; 
 scalar_t__ FUNC31 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC32 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct value**) ; 
 struct value* FUNC33 (struct value**,struct fn_field*,int,struct type*,int) ; 
 struct value* FUNC34 (struct value**,struct fn_field*,int,struct type*,int) ; 

__attribute__((used)) static struct value *
FUNC35 (char *name, struct value **arg1p,
		      struct value **args, int offset,
		      int *static_memfuncp, struct type *type)
{
  int i;
  struct value *v;
  int name_matched = 0;
  char dem_opname[64];

  FUNC1 (type);
  for (i = FUNC14 (type) - 1; i >= 0; i--)
    {
      char *t_field_name = FUNC6 (type, i);
      /* FIXME!  May need to check for ARM demangling here */
      if (FUNC30 (t_field_name, "__", 2) == 0 ||
	  FUNC30 (t_field_name, "op", 2) == 0 ||
	  FUNC30 (t_field_name, "type", 4) == 0)
	{
	  if (FUNC26 (t_field_name, dem_opname, DMGL_ANSI))
	    t_field_name = dem_opname;
	  else if (FUNC26 (t_field_name, dem_opname, 0))
	    t_field_name = dem_opname;
	}
      if (t_field_name && (FUNC29 (t_field_name, name) == 0))
	{
	  int j = FUNC5 (type, i) - 1;
	  struct fn_field *f = FUNC4 (type, i);
	  name_matched = 1;

	  FUNC24 (type, i);
	  if (j > 0 && args == 0)
	    FUNC27 ("cannot resolve overloaded method `%s': no arguments supplied", name);
	  else if (j == 0 && args == 0)
	    {
	      v = FUNC33 (arg1p, f, j, type, offset);
	      if (v != NULL)
		return v;
	    }
	  else
	    while (j >= 0)
	      {
		if (!FUNC32 (FUNC8 (f, j),
			      FUNC16 (FUNC9 (f, j)),
			      FUNC13 (FUNC9 (f, j)),
			      FUNC7 (f, j), args))
		  {
		    if (FUNC10 (f, j))
		      return FUNC34 (arg1p, f, j, type, offset);
		    if (FUNC8 (f, j) && static_memfuncp)
		      *static_memfuncp = 1;
		    v = FUNC33 (arg1p, f, j, type, offset);
		    if (v != NULL)
		      return v;       
		  }
		j--;
	      }
	}
    }

  for (i = FUNC15 (type) - 1; i >= 0; i--)
    {
      int base_offset;

      if (FUNC0 (type, i))
	{
	  if (FUNC11 (type))
	    {
	      /* HP aCC compiled type, search for virtual base offset
	         according to HP/Taligent runtime spec.  */
	      int skip;
	      FUNC28 (type, FUNC2 (type, i),
				    FUNC19 (*arg1p),
				    offset + FUNC20 (*arg1p),
				    &base_offset, &skip);
	      if (skip >= 0)
		FUNC27 ("Virtual base class offset not found in vtable");
	    }
	  else
	    {
	      struct type *baseclass = FUNC25 (FUNC2 (type, i));
	      char *base_valaddr;

	      /* The virtual base class pointer might have been clobbered by the
	         user program. Make sure that it still points to a valid memory
	         location.  */

	      if (offset < 0 || offset >= FUNC12 (type))
		{
		  base_valaddr = (char *) FUNC22 (FUNC12 (baseclass));
		  if (FUNC31 (FUNC17 (*arg1p)
					  + FUNC21 (*arg1p) + offset,
					  base_valaddr,
					  FUNC12 (baseclass)) != 0)
		    FUNC27 ("virtual baseclass botch");
		}
	      else
		base_valaddr = FUNC18 (*arg1p) + offset;

	      base_offset =
		FUNC23 (type, i, base_valaddr,
				  FUNC17 (*arg1p)
				  + FUNC21 (*arg1p) + offset);
	      if (base_offset == -1)
		FUNC27 ("virtual baseclass botch");
	    }
	}
      else
	{
	  base_offset = FUNC3 (type, i) / 8;
	}
      v = FUNC35 (name, arg1p, args, base_offset + offset,
				static_memfuncp, FUNC2 (type, i));
      if (v == (struct value *) - 1)
	{
	  name_matched = 1;
	}
      else if (v)
	{
/* FIXME-bothner:  Why is this commented out?  Why is it here?  */
/*        *arg1p = arg1_tmp; */
	  return v;
	}
    }
  if (name_matched)
    return (struct value *) - 1;
  else
    return NULL;
}