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

/* Variables and functions */
 int /*<<< orphan*/  RETURN_QUIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int interrupt_count ; 
 int /*<<< orphan*/  mips_desc ; 
 scalar_t__ mips_is_open ; 
 scalar_t__ mips_wait_flag ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ remote_debug ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10 (void)
{
  if (!mips_wait_flag)
    return;

  interrupt_count++;

  if (interrupt_count >= 2)
    {
      interrupt_count = 0;

      FUNC8 ();

      if (FUNC2 ("Interrupted while waiting for the program.\n\
Give up (and stop debugging it)? "))
	{
	  /* Clean up in such a way that mips_close won't try to talk to the
	     board (it almost surely won't work since we weren't able to talk to
	     it).  */
	  mips_wait_flag = 0;
	  FUNC0 ();

	  FUNC1 ("Ending remote MIPS debugging.\n");
	  FUNC6 ();

	  FUNC9 (RETURN_QUIT);
	}

      FUNC7 ();
    }

  if (remote_debug > 0)
    FUNC1 ("Sending break\n");

  FUNC3 (mips_desc);

#if 0
  if (mips_is_open)
    {
      char cc;

      /* Send a ^C.  */
      cc = '\003';
      serial_write (mips_desc, &cc, 1);
      sleep (1);
      target_mourn_inferior ();
    }
#endif
}