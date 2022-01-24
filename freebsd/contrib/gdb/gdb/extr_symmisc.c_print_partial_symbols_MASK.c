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
struct ui_file {int dummy; } ;
struct partial_symbol {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct partial_symbol*) ; 
#define  LABEL_DOMAIN 150 
#define  LOC_ARG 149 
#define  LOC_BLOCK 148 
#define  LOC_COMPUTED 147 
#define  LOC_COMPUTED_ARG 146 
#define  LOC_CONST 145 
#define  LOC_CONST_BYTES 144 
#define  LOC_INDIRECT 143 
#define  LOC_LABEL 142 
#define  LOC_LOCAL 141 
#define  LOC_LOCAL_ARG 140 
#define  LOC_OPTIMIZED_OUT 139 
#define  LOC_REF_ARG 138 
#define  LOC_REGISTER 137 
#define  LOC_REGPARM 136 
#define  LOC_REGPARM_ADDR 135 
#define  LOC_STATIC 134 
#define  LOC_TYPEDEF 133 
#define  LOC_UNDEF 132 
#define  LOC_UNRESOLVED 131 
#define  STRUCT_DOMAIN 130 
 int FUNC1 (struct partial_symbol*) ; 
 int /*<<< orphan*/ * FUNC2 (struct partial_symbol*) ; 
 int FUNC3 (struct partial_symbol*) ; 
 int /*<<< orphan*/  FUNC4 (struct partial_symbol*) ; 
#define  UNDEF_DOMAIN 129 
#define  VAR_DOMAIN 128 
 int /*<<< orphan*/  FUNC5 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,struct ui_file*) ; 

__attribute__((used)) static void
FUNC8 (struct partial_symbol **p, int count, char *what,
		       struct ui_file *outfile)
{
  FUNC5 (outfile, "  %s partial symbols:\n", what);
  while (count-- > 0)
    {
      FUNC5 (outfile, "    `%s'", FUNC0 (*p));
      if (FUNC2 (*p) != NULL)
	{
	  FUNC5 (outfile, "  `%s'", FUNC2 (*p));
	}
      FUNC6 (", ", outfile);
      switch (FUNC3 (*p))
	{
	case UNDEF_DOMAIN:
	  FUNC6 ("undefined domain, ", outfile);
	  break;
	case VAR_DOMAIN:
	  /* This is the usual thing -- don't print it */
	  break;
	case STRUCT_DOMAIN:
	  FUNC6 ("struct domain, ", outfile);
	  break;
	case LABEL_DOMAIN:
	  FUNC6 ("label domain, ", outfile);
	  break;
	default:
	  FUNC6 ("<invalid domain>, ", outfile);
	  break;
	}
      switch (FUNC1 (*p))
	{
	case LOC_UNDEF:
	  FUNC6 ("undefined", outfile);
	  break;
	case LOC_CONST:
	  FUNC6 ("constant int", outfile);
	  break;
	case LOC_STATIC:
	  FUNC6 ("static", outfile);
	  break;
	case LOC_INDIRECT:
	  FUNC6 ("extern global", outfile);
	  break;
	case LOC_REGISTER:
	  FUNC6 ("register", outfile);
	  break;
	case LOC_ARG:
	  FUNC6 ("pass by value", outfile);
	  break;
	case LOC_REF_ARG:
	  FUNC6 ("pass by reference", outfile);
	  break;
	case LOC_REGPARM:
	  FUNC6 ("register parameter", outfile);
	  break;
	case LOC_REGPARM_ADDR:
	  FUNC6 ("register address parameter", outfile);
	  break;
	case LOC_LOCAL:
	  FUNC6 ("stack parameter", outfile);
	  break;
	case LOC_TYPEDEF:
	  FUNC6 ("type", outfile);
	  break;
	case LOC_LABEL:
	  FUNC6 ("label", outfile);
	  break;
	case LOC_BLOCK:
	  FUNC6 ("function", outfile);
	  break;
	case LOC_CONST_BYTES:
	  FUNC6 ("constant bytes", outfile);
	  break;
	case LOC_LOCAL_ARG:
	  FUNC6 ("shuffled arg", outfile);
	  break;
	case LOC_UNRESOLVED:
	  FUNC6 ("unresolved", outfile);
	  break;
	case LOC_OPTIMIZED_OUT:
	  FUNC6 ("optimized out", outfile);
	  break;
	case LOC_COMPUTED:
	case LOC_COMPUTED_ARG:
	  FUNC6 ("computed at runtime", outfile);
	  break;
	default:
	  FUNC6 ("<invalid location>", outfile);
	  break;
	}
      FUNC6 (", ", outfile);
      FUNC7 (FUNC4 (*p), 1, outfile);
      FUNC5 (outfile, "\n");
      p++;
    }
}