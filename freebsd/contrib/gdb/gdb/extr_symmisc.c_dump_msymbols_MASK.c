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
struct objfile {int minimal_symbol_count; int /*<<< orphan*/  obfd; struct minimal_symbol* msymbols; int /*<<< orphan*/  name; } ;
struct minimal_symbol {int type; int filename; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct minimal_symbol*) ; 
 scalar_t__ FUNC1 (struct minimal_symbol*) ; 
 int /*<<< orphan*/ * FUNC2 (struct minimal_symbol*) ; 
 int /*<<< orphan*/  FUNC3 (struct minimal_symbol*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct ui_file*) ; 
#define  mst_abs 136 
#define  mst_bss 135 
#define  mst_data 134 
#define  mst_file_bss 133 
#define  mst_file_data 132 
#define  mst_file_text 131 
#define  mst_solib_trampoline 130 
#define  mst_text 129 
#define  mst_unknown 128 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int) ; 

__attribute__((used)) static void
FUNC9 (struct objfile *objfile, struct ui_file *outfile)
{
  struct minimal_symbol *msymbol;
  int index;
  char ms_type;

  FUNC5 (outfile, "\nObject file %s:\n\n", objfile->name);
  if (objfile->minimal_symbol_count == 0)
    {
      FUNC5 (outfile, "No minimal symbols found.\n");
      return;
    }
  for (index = 0, msymbol = objfile->msymbols;
       FUNC0 (msymbol) != NULL; msymbol++, index++)
    {
      switch (msymbol->type)
	{
	case mst_unknown:
	  ms_type = 'u';
	  break;
	case mst_text:
	  ms_type = 'T';
	  break;
	case mst_solib_trampoline:
	  ms_type = 'S';
	  break;
	case mst_data:
	  ms_type = 'D';
	  break;
	case mst_bss:
	  ms_type = 'B';
	  break;
	case mst_abs:
	  ms_type = 'A';
	  break;
	case mst_file_text:
	  ms_type = 't';
	  break;
	case mst_file_data:
	  ms_type = 'd';
	  break;
	case mst_file_bss:
	  ms_type = 'b';
	  break;
	default:
	  ms_type = '?';
	  break;
	}
      FUNC5 (outfile, "[%2d] %c ", index, ms_type);
      FUNC7 (FUNC3 (msymbol), 1, outfile);
      FUNC5 (outfile, " %s", FUNC0 (msymbol));
      if (FUNC1 (msymbol))
	FUNC5 (outfile, " section %s",
			  FUNC4 (objfile->obfd,
					    FUNC1 (msymbol)));
      if (FUNC2 (msymbol) != NULL)
	{
	  FUNC5 (outfile, "  %s", FUNC2 (msymbol));
	}
#ifdef SOFUN_ADDRESS_MAYBE_MISSING
      if (msymbol->filename)
	fprintf_filtered (outfile, "  %s", msymbol->filename);
#endif
      FUNC6 ("\n", outfile);
    }
  if (objfile->minimal_symbol_count != index)
    {
      FUNC8 ("internal error:  minimal symbol count %d != %d",
	       objfile->minimal_symbol_count, index);
    }
  FUNC5 (outfile, "\n");
}