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
struct target_ops {int dummy; } ;
struct so_list {char* so_name; int symbols_loaded; struct so_list* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  RETURN_MASK_ALL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct so_list*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct so_list* so_list_head ; 
 int /*<<< orphan*/  symbol_add_stub ; 
 int /*<<< orphan*/  FUNC7 (int,struct target_ops*) ; 

void
FUNC8 (char *pattern, int from_tty, struct target_ops *target, int readsyms)
{
  struct so_list *gdb;

  if (pattern)
    {
      char *re_err = FUNC4 (pattern);

      if (re_err)
	FUNC2 ("Invalid regexp: %s", re_err);
    }

  FUNC7 (from_tty, target);

  /* Walk the list of currently loaded shared libraries, and read
     symbols for any that match the pattern --- or any whose symbols
     aren't already loaded, if no pattern was given.  */
  {
    int any_matches = 0;
    int loaded_any_symbols = 0;

    for (gdb = so_list_head; gdb; gdb = gdb->next)
      if (! pattern || FUNC5 (gdb->so_name))
	{
	  any_matches = 1;

	  if (gdb->symbols_loaded)
	    {
	      if (from_tty)
		FUNC3 ("Symbols already loaded for %s\n",
				   gdb->so_name);
	    }
	  else if (readsyms)
	    {
	      if (FUNC1
		  (symbol_add_stub, gdb,
		   "Error while reading shared library symbols:\n",
		   RETURN_MASK_ALL))
		{
		  if (from_tty)
		    FUNC3 ("Loaded symbols for %s\n",
				       gdb->so_name);
		  gdb->symbols_loaded = 1;
		  loaded_any_symbols = 1;
		}
	    }
	}

    if (from_tty && pattern && ! any_matches)
      FUNC3
	("No loaded shared libraries match the pattern `%s'.\n", pattern);

    if (loaded_any_symbols)
      {
	/* Getting new symbols may change our opinion about what is
	   frameless.  */
	FUNC6 ();

	FUNC0 ();
      }
  }
}