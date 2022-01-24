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
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int HP_ACC_VBASE_START ; 
 struct type* FUNC0 (struct type*) ; 
 int /*<<< orphan*/  builtin_type_int ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct value*) ; 
 struct value* FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct type*,struct type*) ; 
 int FUNC5 (struct type*) ; 

void
FUNC6 (struct type *type, struct type *basetype, char *valaddr,
		      int offset, int *boffset_p, int *skip_p)
{
  int boffset;			/* offset of virtual base */
  int index;			/* displacement to use in virtual table */
  int skip;

  struct value *vp;
  CORE_ADDR vtbl;		/* the virtual table pointer */
  struct type *pbc;		/* the primary base class */

  /* Look for the virtual base recursively in the primary base, first.
   * This is because the derived class object and its primary base
   * subobject share the primary virtual table.  */

  boffset = 0;
  pbc = FUNC0 (type);
  if (pbc)
    {
      FUNC6 (pbc, basetype, valaddr, offset, &boffset, &skip);
      if (skip < 0)
	{
	  *boffset_p = boffset;
	  *skip_p = -1;
	  return;
	}
    }
  else
    skip = 0;


  /* Find the index of the virtual base according to HP/Taligent
     runtime spec. (Depth-first, left-to-right.)  */
  index = FUNC4 (basetype, type);

  if (index < 0)
    {
      *skip_p = skip + FUNC5 (type);
      *boffset_p = 0;
      return;
    }

  /* pai: FIXME -- 32x64 possible problem */
  /* First word (4 bytes) in object layout is the vtable pointer */
  vtbl = *(CORE_ADDR *) (valaddr + offset);

  /* Before the constructor is invoked, things are usually zero'd out. */
  if (vtbl == 0)
    FUNC1 ("Couldn't find virtual table -- object may not be constructed yet.");


  /* Find virtual base's offset -- jump over entries for primary base
   * ancestors, then use the index computed above.  But also adjust by
   * HP_ACC_VBASE_START for the vtable slots before the start of the
   * virtual base entries.  Offset is negative -- virtual base entries
   * appear _before_ the address point of the virtual table. */

  /* pai: FIXME -- 32x64 problem, if word = 8 bytes, change multiplier
     & use long type */

  /* epstein : FIXME -- added param for overlay section. May not be correct */
  vp = FUNC3 (builtin_type_int, vtbl + 4 * (-skip - index - HP_ACC_VBASE_START), NULL);
  boffset = FUNC2 (vp);
  *skip_p = -1;
  *boffset_p = boffset;
  return;
}