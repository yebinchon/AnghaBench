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
struct dfamust {int /*<<< orphan*/  must; scalar_t__ exact; struct dfamust* next; } ;
struct TYPE_2__ {struct dfamust* musts; } ;

/* Variables and functions */
 TYPE_1__ dfa ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  kwset ; 
 int /*<<< orphan*/  kwset_exact_matches ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (void)
{
  struct dfamust const *dm;
  char const *err;

  if (dfa.musts)
    {
      FUNC2 ();
      /* First, we compile in the substrings known to be exact
	 matches.  The kwset matcher will return the index
	 of the matching string that it chooses. */
      for (dm = dfa.musts; dm; dm = dm->next)
	{
	  if (!dm->exact)
	    continue;
	  ++kwset_exact_matches;
	  if ((err = FUNC1 (kwset, dm->must, FUNC4 (dm->must))) != 0)
	    FUNC0 (2, 0, err);
	}
      /* Now, we compile the substrings that will require
	 the use of the regexp matcher.  */
      for (dm = dfa.musts; dm; dm = dm->next)
	{
	  if (dm->exact)
	    continue;
	  if ((err = FUNC1 (kwset, dm->must, FUNC4 (dm->must))) != 0)
	    FUNC0 (2, 0, err);
	}
      if ((err = FUNC3 (kwset)) != 0)
	FUNC0 (2, 0, err);
    }
}