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
struct ui_file {int dummy; } ;
struct reggroup {int dummy; } ;
struct regcache {TYPE_1__* descr; } ;
struct gdbarch {int dummy; } ;
struct cleanup {int dummy; } ;
typedef  enum regcache_dump_what { ____Placeholder_regcache_dump_what } regcache_dump_what ;
struct TYPE_2__ {int legacy_p; int nr_raw_registers; int nr_cooked_registers; int sizeof_raw_registers; int sizeof_raw_register_valid_p; int* register_offset; int* sizeof_register; struct gdbarch* gdbarch; } ;

/* Variables and functions */
 long FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int MAX_REGISTER_SIZE ; 
 int NUM_PSEUDO_REGS ; 
 int NUM_REGS ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  TARGET_BYTE_ORDER ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC7 (struct ui_file*,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (struct gdbarch*,int,struct reggroup*) ; 
 struct cleanup* FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  null_cleanup ; 
 int /*<<< orphan*/  FUNC12 (struct regcache*,int,unsigned char*) ; 
 int regcache_dump_cooked ; 
 int regcache_dump_groups ; 
 int regcache_dump_raw ; 
 int /*<<< orphan*/  FUNC13 (struct regcache*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC14 (struct regcache*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct reggroup*) ; 
 struct reggroup* FUNC16 (struct gdbarch*,struct reggroup*) ; 
 int /*<<< orphan*/  FUNC17 (struct gdbarch*,int) ; 
 int /*<<< orphan*/  FUNC18 (char const*) ; 
 scalar_t__ FUNC19 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char**,char*,int) ; 
 int /*<<< orphan*/  xfree ; 

__attribute__((used)) static void
FUNC21 (struct regcache *regcache, struct ui_file *file,
	       enum regcache_dump_what what_to_dump)
{
  struct cleanup *cleanups = FUNC11 (null_cleanup, NULL);
  struct gdbarch *gdbarch = regcache->descr->gdbarch;
  int regnum;
  int footnote_nr = 0;
  int footnote_register_size = 0;
  int footnote_register_offset = 0;
  int footnote_register_type_name_null = 0;
  long register_offset = 0;
  unsigned char buf[MAX_REGISTER_SIZE];

#if 0
  fprintf_unfiltered (file, "legacy_p %d\n", regcache->descr->legacy_p);
  fprintf_unfiltered (file, "nr_raw_registers %d\n",
		      regcache->descr->nr_raw_registers);
  fprintf_unfiltered (file, "nr_cooked_registers %d\n",
		      regcache->descr->nr_cooked_registers);
  fprintf_unfiltered (file, "sizeof_raw_registers %ld\n",
		      regcache->descr->sizeof_raw_registers);
  fprintf_unfiltered (file, "sizeof_raw_register_valid_p %ld\n",
		      regcache->descr->sizeof_raw_register_valid_p);
  fprintf_unfiltered (file, "NUM_REGS %d\n", NUM_REGS);
  fprintf_unfiltered (file, "NUM_PSEUDO_REGS %d\n", NUM_PSEUDO_REGS);
#endif

  FUNC9 (regcache->descr->nr_cooked_registers
	      == (NUM_REGS + NUM_PSEUDO_REGS));

  for (regnum = -1; regnum < regcache->descr->nr_cooked_registers; regnum++)
    {
      /* Name.  */
      if (regnum < 0)
	FUNC8 (file, " %-10s", "Name");
      else
	{
	  const char *p = FUNC3 (regnum);
	  if (p == NULL)
	    p = "";
	  else if (p[0] == '\0')
	    p = "''";
	  FUNC8 (file, " %-10s", p);
	}

      /* Number.  */
      if (regnum < 0)
	FUNC8 (file, " %4s", "Nr");
      else
	FUNC8 (file, " %4d", regnum);

      /* Relative number.  */
      if (regnum < 0)
	FUNC8 (file, " %4s", "Rel");
      else if (regnum < NUM_REGS)
	FUNC8 (file, " %4d", regnum);
      else
	FUNC8 (file, " %4d", (regnum - NUM_REGS));

      /* Offset.  */
      if (regnum < 0)
	FUNC8 (file, " %6s  ", "Offset");
      else
	{
	  FUNC8 (file, " %6ld",
			      regcache->descr->register_offset[regnum]);
	  if (register_offset != regcache->descr->register_offset[regnum]
	      || register_offset != FUNC0 (regnum)
	      || (regnum > 0
		  && (regcache->descr->register_offset[regnum]
		      != (regcache->descr->register_offset[regnum - 1]
			  + regcache->descr->sizeof_register[regnum - 1])))
	      )
	    {
	      if (!footnote_register_offset)
		footnote_register_offset = ++footnote_nr;
	      FUNC8 (file, "*%d", footnote_register_offset);
	    }
	  else
	    FUNC8 (file, "  ");
	  register_offset = (regcache->descr->register_offset[regnum]
			     + regcache->descr->sizeof_register[regnum]);
	}

      /* Size.  */
      if (regnum < 0)
	FUNC8 (file, " %5s ", "Size");
      else
	{
	  FUNC8 (file, " %5ld",
			      regcache->descr->sizeof_register[regnum]);
	  if ((regcache->descr->sizeof_register[regnum]
	       != FUNC1 (regnum))
	      || (regcache->descr->sizeof_register[regnum]
		  != FUNC2 (regnum))
	      || (regcache->descr->sizeof_register[regnum]
		  != FUNC4 (FUNC17 (regcache->descr->gdbarch,
						 regnum)))
	      )
	    {
	      if (!footnote_register_size)
		footnote_register_size = ++footnote_nr;
	      FUNC8 (file, "*%d", footnote_register_size);
	    }
	  else
	    FUNC8 (file, " ");
	}

      /* Type.  */
      {
	const char *t;
	if (regnum < 0)
	  t = "Type";
	else
	  {
	    static const char blt[] = "builtin_type";
	    t = FUNC5 (FUNC17 (regcache->descr->gdbarch, regnum));
	    if (t == NULL)
	      {
		char *n;
		if (!footnote_register_type_name_null)
		  footnote_register_type_name_null = ++footnote_nr;
		FUNC20 (&n, "*%d", footnote_register_type_name_null);
		FUNC11 (xfree, n);
		t = n;
	      }
	    /* Chop a leading builtin_type.  */
	    if (FUNC19 (t, blt, FUNC18 (blt)) == 0)
	      t += FUNC18 (blt);
	  }
	FUNC8 (file, " %-15s", t);
      }

      /* Leading space always present.  */
      FUNC8 (file, " ");

      /* Value, raw.  */
      if (what_to_dump == regcache_dump_raw)
	{
	  if (regnum < 0)
	    FUNC8 (file, "Raw value");
	  else if (regnum >= regcache->descr->nr_raw_registers)
	    FUNC8 (file, "<cooked>");
	  else if (!FUNC14 (regcache, regnum))
	    FUNC8 (file, "<invalid>");
	  else
	    {
	      FUNC13 (regcache, regnum, buf);
	      FUNC8 (file, "0x");
	      FUNC7 (file, TARGET_BYTE_ORDER, buf,
				 FUNC1 (regnum));
	    }
	}

      /* Value, cooked.  */
      if (what_to_dump == regcache_dump_cooked)
	{
	  if (regnum < 0)
	    FUNC8 (file, "Cooked value");
	  else
	    {
	      FUNC12 (regcache, regnum, buf);
	      FUNC8 (file, "0x");
	      FUNC7 (file, TARGET_BYTE_ORDER, buf,
				 FUNC2 (regnum));
	    }
	}

      /* Group members.  */
      if (what_to_dump == regcache_dump_groups)
	{
	  if (regnum < 0)
	    FUNC8 (file, "Groups");
	  else
	    {
	      const char *sep = "";
	      struct reggroup *group;
	      for (group = FUNC16 (gdbarch, NULL);
		   group != NULL;
		   group = FUNC16 (gdbarch, group))
		{
		  if (FUNC10 (gdbarch, regnum, group))
		    {
		      FUNC8 (file, "%s%s", sep, FUNC15 (group));
		      sep = ",";
		    }
		}
	    }
	}

      FUNC8 (file, "\n");
    }

  if (footnote_register_size)
    FUNC8 (file, "*%d: Inconsistent register sizes.\n",
			footnote_register_size);
  if (footnote_register_offset)
    FUNC8 (file, "*%d: Inconsistent register offsets.\n",
			footnote_register_offset);
  if (footnote_register_type_name_null)
    FUNC8 (file, 
			"*%d: Register type's name NULL.\n",
			footnote_register_type_name_null);
  FUNC6 (cleanups);
}