#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ui_file {int dummy; } ;
struct type {int dummy; } ;
struct symbol {int dummy; } ;
struct print_symbol_args {int depth; struct ui_file* outfile; struct symbol* symbol; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct symbol*) ; 
 scalar_t__ LABEL_DOMAIN ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,struct ui_file*,int,int) ; 
#define  LOC_ARG 147 
#define  LOC_BASEREG 146 
#define  LOC_BASEREG_ARG 145 
#define  LOC_BLOCK 144 
#define  LOC_COMPUTED 143 
#define  LOC_COMPUTED_ARG 142 
#define  LOC_CONST 141 
#define  LOC_CONST_BYTES 140 
#define  LOC_INDIRECT 139 
#define  LOC_LABEL 138 
#define  LOC_LOCAL 137 
#define  LOC_LOCAL_ARG 136 
#define  LOC_OPTIMIZED_OUT 135 
#define  LOC_REF_ARG 134 
#define  LOC_REGISTER 133 
#define  LOC_REGPARM 132 
#define  LOC_REGPARM_ADDR 131 
#define  LOC_STATIC 130 
#define  LOC_TYPEDEF 129 
#define  LOC_UNRESOLVED 128 
 scalar_t__ STRUCT_DOMAIN ; 
 int /*<<< orphan*/  FUNC4 (struct symbol*) ; 
 TYPE_1__* FUNC5 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC6 (struct symbol*) ; 
 int FUNC7 (struct symbol*) ; 
 scalar_t__ FUNC8 (struct symbol*) ; 
 char* FUNC9 (struct symbol*) ; 
 scalar_t__ FUNC10 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC11 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC12 (struct symbol*) ; 
 int /*<<< orphan*/ * FUNC13 (struct symbol*) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 scalar_t__ TYPE_CODE_ENUM ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 unsigned int FUNC15 (struct type*) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 struct type* FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC22 (int,struct ui_file*) ; 

__attribute__((used)) static int
FUNC23 (void *args)
{
  struct symbol *symbol = ((struct print_symbol_args *) args)->symbol;
  int depth = ((struct print_symbol_args *) args)->depth;
  struct ui_file *outfile = ((struct print_symbol_args *) args)->outfile;

  FUNC22 (depth, outfile);
  if (FUNC8 (symbol) == LABEL_DOMAIN)
    {
      FUNC19 (outfile, "label %s at ", FUNC9 (symbol));
      FUNC21 (FUNC12 (symbol), 1, outfile);
      if (FUNC5 (symbol))
	FUNC19 (outfile, " section %s\n",
		       FUNC17 (FUNC5 (symbol)->owner,
					 FUNC5 (symbol)));
      else
	FUNC19 (outfile, "\n");
      return 1;
    }
  if (FUNC8 (symbol) == STRUCT_DOMAIN)
    {
      if (FUNC16 (FUNC10 (symbol)))
	{
	  FUNC3 (FUNC10 (symbol), "", outfile, 1, depth);
	}
      else
	{
	  FUNC19 (outfile, "%s %s = ",
			 (FUNC14 (FUNC10 (symbol)) == TYPE_CODE_ENUM
			  ? "enum"
		     : (FUNC14 (FUNC10 (symbol)) == TYPE_CODE_STRUCT
			? "struct" : "union")),
			    FUNC2 (symbol));
	  FUNC3 (FUNC10 (symbol), "", outfile, 1, depth);
	}
      FUNC19 (outfile, ";\n");
    }
  else
    {
      if (FUNC7 (symbol) == LOC_TYPEDEF)
	FUNC19 (outfile, "typedef ");
      if (FUNC10 (symbol))
	{
	  /* Print details of types, except for enums where it's clutter.  */
	  FUNC3 (FUNC10 (symbol), FUNC9 (symbol),
			 outfile,
			 FUNC14 (FUNC10 (symbol)) != TYPE_CODE_ENUM,
			 depth);
	  FUNC19 (outfile, "; ");
	}
      else
	FUNC19 (outfile, "%s ", FUNC9 (symbol));

      switch (FUNC7 (symbol))
	{
	case LOC_CONST:
	  FUNC19 (outfile, "const %ld (0x%lx)",
			    FUNC11 (symbol),
			    FUNC11 (symbol));
	  break;

	case LOC_CONST_BYTES:
	  {
	    unsigned i;
	    struct type *type = FUNC18 (FUNC10 (symbol));
	    FUNC19 (outfile, "const %u hex bytes:",
			      FUNC15 (type));
	    for (i = 0; i < FUNC15 (type); i++)
	      FUNC19 (outfile, " %02x",
				(unsigned) FUNC13 (symbol)[i]);
	  }
	  break;

	case LOC_STATIC:
	  FUNC19 (outfile, "static at ");
	  FUNC21 (FUNC12 (symbol), 1, outfile);
	  if (FUNC5 (symbol))
	    FUNC19 (outfile, " section %s",
			      FUNC17
			      (FUNC5 (symbol)->owner,
			       FUNC5 (symbol)));
	  break;

	case LOC_INDIRECT:
	  FUNC19 (outfile, "extern global at *(");
	  FUNC21 (FUNC12 (symbol), 1, outfile);
	  FUNC19 (outfile, "),");
	  break;

	case LOC_REGISTER:
	  FUNC19 (outfile, "register %ld", FUNC11 (symbol));
	  break;

	case LOC_ARG:
	  FUNC19 (outfile, "arg at offset 0x%lx",
			    FUNC11 (symbol));
	  break;

	case LOC_LOCAL_ARG:
	  FUNC19 (outfile, "arg at offset 0x%lx from fp",
			    FUNC11 (symbol));
	  break;

	case LOC_REF_ARG:
	  FUNC19 (outfile, "reference arg at 0x%lx", FUNC11 (symbol));
	  break;

	case LOC_REGPARM:
	  FUNC19 (outfile, "parameter register %ld", FUNC11 (symbol));
	  break;

	case LOC_REGPARM_ADDR:
	  FUNC19 (outfile, "address parameter register %ld", FUNC11 (symbol));
	  break;

	case LOC_LOCAL:
	  FUNC19 (outfile, "local at offset 0x%lx",
			    FUNC11 (symbol));
	  break;

	case LOC_BASEREG:
	  FUNC19 (outfile, "local at 0x%lx from register %d",
			    FUNC11 (symbol), FUNC4 (symbol));
	  break;

	case LOC_BASEREG_ARG:
	  FUNC19 (outfile, "arg at 0x%lx from register %d",
			    FUNC11 (symbol), FUNC4 (symbol));
	  break;

	case LOC_TYPEDEF:
	  break;

	case LOC_LABEL:
	  FUNC19 (outfile, "label at ");
	  FUNC21 (FUNC12 (symbol), 1, outfile);
	  if (FUNC5 (symbol))
	    FUNC19 (outfile, " section %s",
			      FUNC17
			      (FUNC5 (symbol)->owner,
			       FUNC5 (symbol)));
	  break;

	case LOC_BLOCK:
	  FUNC19 (outfile, "block object ");
	  FUNC20 (FUNC6 (symbol), outfile);
	  FUNC19 (outfile, ", ");
	  FUNC21 (FUNC1 (FUNC6 (symbol)),
				 1,
				 outfile);
	  FUNC19 (outfile, "..");
	  FUNC21 (FUNC0 (FUNC6 (symbol)),
				 1,
				 outfile);
	  if (FUNC5 (symbol))
	    FUNC19 (outfile, " section %s",
			      FUNC17
			      (FUNC5 (symbol)->owner,
			       FUNC5 (symbol)));
	  break;

	case LOC_COMPUTED:
	case LOC_COMPUTED_ARG:
	  FUNC19 (outfile, "computed at runtime");
	  break;

	case LOC_UNRESOLVED:
	  FUNC19 (outfile, "unresolved");
	  break;

	case LOC_OPTIMIZED_OUT:
	  FUNC19 (outfile, "optimized out");
	  break;

	default:
	  FUNC19 (outfile, "botched symbol class %x",
			    FUNC7 (symbol));
	  break;
	}
    }
  FUNC19 (outfile, "\n");
  return 1;
}