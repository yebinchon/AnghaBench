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
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int NSIG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  thread_print_set ; 
 int thread_signals ; 
 int /*<<< orphan*/  thread_stop_set ; 

__attribute__((used)) static void
FUNC7 (void)
{
#ifdef GET_THREAD_SIGNALS
  if (!thread_signals)
    {
      sigset_t mask;
      int i;

      GET_THREAD_SIGNALS (&mask);
      sigemptyset (&thread_stop_set);
      sigemptyset (&thread_print_set);

      for (i = 1; i < NSIG; i++)
	{
	  if (sigismember (&mask, i))
	    {
	      if (signal_stop_update (target_signal_from_host (i), 0))
		sigaddset (&thread_stop_set, i);
	      if (signal_print_update (target_signal_from_host (i), 0))
		sigaddset (&thread_print_set, i);
	      thread_signals = 1;
	    }
	}
    }
#endif
}