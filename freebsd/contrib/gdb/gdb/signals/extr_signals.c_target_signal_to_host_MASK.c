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
typedef  enum target_signal { ____Placeholder_target_signal } target_signal ;

/* Variables and functions */
 int FUNC0 (int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

int
FUNC3 (enum target_signal oursig)
{
  int oursig_ok;
  int targ_signo = FUNC0 (oursig, &oursig_ok);
  if (!oursig_ok)
    {
      /* The user might be trying to do "signal SIGSAK" where this system
         doesn't have SIGSAK.  */
      FUNC2 ("Signal %s does not exist on this system.\n",
	       FUNC1 (oursig));
      return 0;
    }
  else
    return targ_signo;
}