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
 struct type* FUNC2 (struct type*,int) ; 
 int FUNC3 (struct type*,int) ; 
 struct fn_field* FUNC4 (struct type*,int) ; 
 int FUNC5 (struct type*,int) ; 
 char* FUNC6 (struct type*,int) ; 
 scalar_t__ FUNC7 (struct type*) ; 
 int FUNC8 (struct type*) ; 
 int FUNC9 (struct type*) ; 
 scalar_t__ FUNC10 (struct value*) ; 
 scalar_t__ FUNC11 (struct value*) ; 
 int /*<<< orphan*/  FUNC12 (struct value*) ; 
 scalar_t__ FUNC13 (struct value*) ; 
 int FUNC14 (struct value*) ; 
 int FUNC15 (struct type*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (struct type*,struct type*,int /*<<< orphan*/ ,scalar_t__,int*,int*) ; 
 scalar_t__ FUNC19 (char*,char*) ; 

__attribute__((used)) static struct fn_field *
FUNC20 (struct value **argp, char *method, int offset,
		  struct type *type, int *num_fns,
		  struct type **basetype, int *boffset)
{
  int i;
  struct fn_field *f;
  FUNC1 (type);

  *num_fns = 0;

  /* First check in object itself */
  for (i = FUNC8 (type) - 1; i >= 0; i--)
    {
      /* pai: FIXME What about operators and type conversions? */
      char *fn_field_name = FUNC6 (type, i);
      if (fn_field_name && (FUNC19 (fn_field_name, method) == 0))
	{
	  int len = FUNC5 (type, i);
	  struct fn_field *f = FUNC4 (type, i);

	  *num_fns = len;
	  *basetype = type;
	  *boffset = offset;

	  /* Resolve any stub methods.  */
	  FUNC16 (type, i);

	  return f;
	}
    }

  /* Not found in object, check in base subobjects */
  for (i = FUNC9 (type) - 1; i >= 0; i--)
    {
      int base_offset;
      if (FUNC0 (type, i))
	{
	  if (FUNC7 (type))
	    {
	      /* HP aCC compiled type, search for virtual base offset
	       * according to HP/Taligent runtime spec.  */
	      int skip;
	      FUNC18 (type, FUNC2 (type, i),
				    FUNC12 (*argp),
				    offset + FUNC13 (*argp),
				    &base_offset, &skip);
	      if (skip >= 0)
		FUNC17 ("Virtual base class offset not found in vtable");
	    }
	  else
	    {
	      /* probably g++ runtime model */
	      base_offset = FUNC14 (*argp) + offset;
	      base_offset =
		FUNC15 (type, i,
				  FUNC11 (*argp) + base_offset,
				  FUNC10 (*argp) + base_offset);
	      if (base_offset == -1)
		FUNC17 ("virtual baseclass botch");
	    }
	}
      else
	/* non-virtual base, simply use bit position from debug info */
	{
	  base_offset = FUNC3 (type, i) / 8;
	}
      f = FUNC20 (argp, method, base_offset + offset,
			    FUNC2 (type, i), num_fns, basetype,
			    boffset);
      if (f)
	return f;
    }
  return NULL;
}