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
struct vmap {char* name; char* member; scalar_t__ loaded; struct vmap* nxt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  null_ptid ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct vmap* vmap ; 
 scalar_t__ FUNC8 (struct vmap*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10 (char *pattern, int from_tty)
{
  FUNC1 ();

  /* Check for new shared libraries loaded with load ().  */
  if (! FUNC4 (inferior_ptid, null_ptid))
    FUNC9 (FUNC0 (inferior_ptid));

  if (pattern)
    {
      char *re_err = FUNC5 (pattern);

      if (re_err)
	FUNC2 ("Invalid regexp: %s", re_err);
    }

  /* Walk the list of currently loaded shared libraries, and read
     symbols for any that match the pattern --- or any whose symbols
     aren't already loaded, if no pattern was given.  */
  {
    int any_matches = 0;
    int loaded_any_symbols = 0;
    struct vmap *vp = vmap;

    if (!vp)
      return;

    /* skip over the first vmap, it is the main program, always loaded. */
    for (vp = vp->nxt; vp; vp = vp->nxt)
      if (! pattern
	    || FUNC6 (vp->name)
	    || (*vp->member && FUNC6 (vp->member)))
	{
	  any_matches = 1;

	  if (vp->loaded)
	    {
	      if (from_tty)
		FUNC3 ("Symbols already loaded for %s\n",
				   vp->name);
	    }
	  else
	    {
	      if (FUNC8 (vp))
		loaded_any_symbols = 1;
	    }
	}

    if (from_tty && pattern && ! any_matches)
      FUNC3
	("No loaded shared libraries match the pattern `%s'.\n", pattern);

    if (loaded_any_symbols)
      {
	/* Getting new symbols may change our opinion about what is
	   frameless.  */
	FUNC7 ();
      }
  }
}