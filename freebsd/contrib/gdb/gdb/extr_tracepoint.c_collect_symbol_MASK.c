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
struct symbol {int dummy; } ;
struct collection_list {int dummy; } ;
typedef  void* bfd_signed_vma ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (struct symbol*) ; 
#define  LOC_ARG 140 
#define  LOC_BASEREG 139 
#define  LOC_BASEREG_ARG 138 
#define  LOC_CONST 137 
#define  LOC_LOCAL 136 
#define  LOC_LOCAL_ARG 135 
#define  LOC_OPTIMIZED_OUT 134 
#define  LOC_REF_ARG 133 
#define  LOC_REGISTER 132 
#define  LOC_REGPARM 131 
#define  LOC_REGPARM_ADDR 130 
#define  LOC_STATIC 129 
#define  LOC_UNRESOLVED 128 
 unsigned int FUNC2 (struct symbol*) ; 
 int FUNC3 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC4 (struct symbol*) ; 
 void* FUNC5 (struct symbol*) ; 
 void* FUNC6 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPE_CODE_FLT ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct collection_list*,unsigned int,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct collection_list*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  info_verbose ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 int /*<<< orphan*/  FUNC14 (char*,void*) ; 

__attribute__((used)) static void
FUNC15 (struct collection_list *collect, struct symbol *sym,
		long frame_regno, long frame_offset)
{
  unsigned long len;
  unsigned int reg;
  bfd_signed_vma offset;

  len = FUNC8 (FUNC11 (FUNC4 (sym)));
  switch (FUNC3 (sym))
    {
    default:
      FUNC12 ("%s: don't know symbol class %d\n",
		       FUNC1 (sym), FUNC3 (sym));
      break;
    case LOC_CONST:
      FUNC12 ("constant %s (value %ld) will not be collected.\n",
		       FUNC1 (sym), FUNC5 (sym));
      break;
    case LOC_STATIC:
      offset = FUNC6 (sym);
      if (info_verbose)
	{
	  char tmp[40];

	  FUNC14 (tmp, offset);
	  FUNC12 ("LOC_STATIC %s: collect %ld bytes at %s.\n",
			   FUNC1 (sym), len, tmp /* address */);
	}
      FUNC9 (collect, -1, offset, len);	/* 0 == memory */
      break;
    case LOC_REGISTER:
    case LOC_REGPARM:
      reg = FUNC5 (sym);
      if (info_verbose)
	FUNC12 ("LOC_REG[parm] %s: ", FUNC1 (sym));
      FUNC10 (collect, reg);
      /* check for doubles stored in two registers */
      /* FIXME: how about larger types stored in 3 or more regs? */
      if (FUNC7 (FUNC4 (sym)) == TYPE_CODE_FLT &&
	  len > FUNC0 (reg))
	FUNC10 (collect, reg + 1);
      break;
    case LOC_REF_ARG:
      FUNC12 ("Sorry, don't know how to do LOC_REF_ARG yet.\n");
      FUNC12 ("       (will not collect %s)\n",
		       FUNC1 (sym));
      break;
    case LOC_ARG:
      reg = frame_regno;
      offset = frame_offset + FUNC5 (sym);
      if (info_verbose)
	{
	  FUNC12 ("LOC_LOCAL %s: Collect %ld bytes at offset ",
			   FUNC1 (sym), len);
	  FUNC13 (offset);
	  FUNC12 (" from frame ptr reg %d\n", reg);
	}
      FUNC9 (collect, reg, offset, len);
      break;
    case LOC_REGPARM_ADDR:
      reg = FUNC5 (sym);
      offset = 0;
      if (info_verbose)
	{
	  FUNC12 ("LOC_REGPARM_ADDR %s: Collect %ld bytes at offset ",
			   FUNC1 (sym), len);
	  FUNC13 (offset);
	  FUNC12 (" from reg %d\n", reg);
	}
      FUNC9 (collect, reg, offset, len);
      break;
    case LOC_LOCAL:
    case LOC_LOCAL_ARG:
      reg = frame_regno;
      offset = frame_offset + FUNC5 (sym);
      if (info_verbose)
	{
	  FUNC12 ("LOC_LOCAL %s: Collect %ld bytes at offset ",
			   FUNC1 (sym), len);
	  FUNC13 (offset);
	  FUNC12 (" from frame ptr reg %d\n", reg);
	}
      FUNC9 (collect, reg, offset, len);
      break;
    case LOC_BASEREG:
    case LOC_BASEREG_ARG:
      reg = FUNC2 (sym);
      offset = FUNC5 (sym);
      if (info_verbose)
	{
	  FUNC12 ("LOC_BASEREG %s: collect %ld bytes at offset ",
			   FUNC1 (sym), len);
	  FUNC13 (offset);
	  FUNC12 (" from basereg %d\n", reg);
	}
      FUNC9 (collect, reg, offset, len);
      break;
    case LOC_UNRESOLVED:
      FUNC12 ("Don't know LOC_UNRESOLVED %s\n", FUNC1 (sym));
      break;
    case LOC_OPTIMIZED_OUT:
      FUNC12 ("%s has been optimized out of existence.\n",
		       FUNC1 (sym));
      break;
    }
}