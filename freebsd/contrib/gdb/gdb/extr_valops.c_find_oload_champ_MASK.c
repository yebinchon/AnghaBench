#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct type {int dummy; } ;
struct symbol {int dummy; } ;
struct fn_field {int physname; } ;
struct badness_vector {int* rank; } ;
struct TYPE_2__ {struct type* type; } ;

/* Variables and functions */
 int FUNC0 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC1 (struct symbol*) ; 
 struct type* FUNC2 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC3 (struct fn_field*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fn_field*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct badness_vector*,struct badness_vector*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 int FUNC8 (int,struct fn_field*,int) ; 
 scalar_t__ overload_debug ; 
 struct badness_vector* FUNC9 (struct type**,int,struct type**,int) ; 
 int /*<<< orphan*/  FUNC10 (struct type**) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int
FUNC12 (struct type **arg_types, int nargs, int method,
		  int num_fns, struct fn_field *fns_ptr,
		  struct symbol **oload_syms,
		  struct badness_vector **oload_champ_bv)
{
  int ix;
  struct badness_vector *bv;	/* A measure of how good an overloaded instance is */
  int oload_champ = -1;		/* Index of best overloaded function */
  int oload_ambiguous = 0;	/* Current ambiguity state for overload resolution */
  /* 0 => no ambiguity, 1 => two good funcs, 2 => incomparable funcs */

  *oload_champ_bv = NULL;

  /* Consider each candidate in turn */
  for (ix = 0; ix < num_fns; ix++)
    {
      int jj;
      int static_offset = FUNC8 (method, fns_ptr, ix);
      int nparms;
      struct type **parm_types;

      if (method)
	{
	  nparms = FUNC5 (FUNC4 (fns_ptr, ix));
	}
      else
	{
	  /* If it's not a method, this is the proper place */
	  nparms=FUNC5(FUNC1(oload_syms[ix]));
	}

      /* Prepare array of parameter types */
      parm_types = (struct type **) FUNC11 (nparms * (sizeof (struct type *)));
      for (jj = 0; jj < nparms; jj++)
	parm_types[jj] = (method
			  ? (FUNC3 (fns_ptr, ix)[jj].type)
			  : FUNC2 (FUNC1 (oload_syms[ix]), jj));

      /* Compare parameter types to supplied argument types.  Skip THIS for
         static methods.  */
      bv = FUNC9 (parm_types, nparms, arg_types + static_offset,
			  nargs - static_offset);

      if (!*oload_champ_bv)
	{
	  *oload_champ_bv = bv;
	  oload_champ = 0;
	}
      else
	/* See whether current candidate is better or worse than previous best */
	switch (FUNC6 (bv, *oload_champ_bv))
	  {
	  case 0:
	    oload_ambiguous = 1;	/* top two contenders are equally good */
	    break;
	  case 1:
	    oload_ambiguous = 2;	/* incomparable top contenders */
	    break;
	  case 2:
	    *oload_champ_bv = bv;	/* new champion, record details */
	    oload_ambiguous = 0;
	    oload_champ = ix;
	    break;
	  case 3:
	  default:
	    break;
	  }
      FUNC10 (parm_types);
      if (overload_debug)
	{
	  if (method)
	    FUNC7 (gdb_stderr,"Overloaded method instance %s, # of parms %d\n", fns_ptr[ix].physname, nparms);
	  else
	    FUNC7 (gdb_stderr,"Overloaded function instance %s # of parms %d\n", FUNC0 (oload_syms[ix]), nparms);
	  for (jj = 0; jj < nargs - static_offset; jj++)
	    FUNC7 (gdb_stderr,"...Badness @ %d : %d\n", jj, bv->rank[jj]);
	  FUNC7 (gdb_stderr,"Overload resolution champion is %d, ambiguous? %d\n", oload_champ, oload_ambiguous);
	}
    }

  return oload_champ;
}