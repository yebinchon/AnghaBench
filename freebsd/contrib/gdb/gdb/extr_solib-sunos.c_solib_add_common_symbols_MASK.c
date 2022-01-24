#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct rtc_symb {int /*<<< orphan*/  rtc_next; int /*<<< orphan*/  rtc_sp; } ;
struct TYPE_6__ {int n_strx; int /*<<< orphan*/  n_name; } ;
struct nlist {scalar_t__ n_type; int n_value; TYPE_1__ n_un; } ;
typedef  int /*<<< orphan*/  inferior_rtc_symb ;
typedef  int /*<<< orphan*/  inferior_rtc_nlist ;
struct TYPE_7__ {int /*<<< orphan*/ * msymbols; scalar_t__ minimal_symbol_count; int /*<<< orphan*/  objfile_obstack; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ N_COMM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  mst_bss ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*,int) ; 
 TYPE_2__* rt_common_objfile ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (int) ; 

__attribute__((used)) static void
FUNC12 (CORE_ADDR rtc_symp)
{
  struct rtc_symb inferior_rtc_symb;
  struct nlist inferior_rtc_nlist;
  int len;
  char *name;

  /* Remove any runtime common symbols from previous runs.  */

  if (rt_common_objfile != NULL && rt_common_objfile->minimal_symbol_count)
    {
      FUNC5 (&rt_common_objfile->objfile_obstack, 0);
      FUNC6 (&rt_common_objfile->objfile_obstack);
      rt_common_objfile->minimal_symbol_count = 0;
      rt_common_objfile->msymbols = NULL;
      FUNC9 (rt_common_objfile);
    }

  FUNC2 ();
  FUNC4 ();

  while (rtc_symp)
    {
      FUNC8 (rtc_symp,
		   (char *) &inferior_rtc_symb,
		   sizeof (inferior_rtc_symb));
      FUNC8 (FUNC0 (inferior_rtc_symb.rtc_sp),
		   (char *) &inferior_rtc_nlist,
		   sizeof (inferior_rtc_nlist));
      if (inferior_rtc_nlist.n_type == N_COMM)
	{
	  /* FIXME: The length of the symbol name is not available, but in the
	     current implementation the common symbol is allocated immediately
	     behind the name of the symbol. */
	  len = inferior_rtc_nlist.n_value - inferior_rtc_nlist.n_un.n_strx;

	  name = FUNC11 (len);
	  FUNC8 (FUNC0 (inferior_rtc_nlist.n_un.n_name),
		       name, len);

	  /* Allocate the runtime common objfile if necessary. */
	  if (rt_common_objfile == NULL)
	    FUNC1 ();

	  FUNC7 (name, inferior_rtc_nlist.n_value,
				      mst_bss, rt_common_objfile);
	  FUNC10 (name);
	}
      rtc_symp = FUNC0 (inferior_rtc_symb.rtc_next);
    }

  /* Install any minimal symbols that have been collected as the current
     minimal symbols for the runtime common objfile.  */

  FUNC3 (rt_common_objfile);
}