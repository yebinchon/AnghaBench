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
struct minimal_symbol {int dummy; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct minimal_symbol*) ; 
 char** debug_base_symbols ; 
 struct minimal_symbol* FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  symfile_objfile ; 

__attribute__((used)) static CORE_ADDR
FUNC2 (void)
{
  struct minimal_symbol *msymbol;
  CORE_ADDR address = 0;
  char **symbolp;

  /* For SunOS, we want to limit the search for the debug base symbol to the
     executable being debugged, since there is a duplicate named symbol in the
     shared library.  We don't want the shared library versions. */

  for (symbolp = debug_base_symbols; *symbolp != NULL; symbolp++)
    {
      msymbol = FUNC1 (*symbolp, NULL, symfile_objfile);
      if ((msymbol != NULL) && (FUNC0 (msymbol) != 0))
	{
	  address = FUNC0 (msymbol);
	  return (address);
	}
    }
  return (0);
}