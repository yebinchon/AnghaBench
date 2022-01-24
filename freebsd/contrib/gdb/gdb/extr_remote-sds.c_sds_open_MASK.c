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
 int /*<<< orphan*/  RETURN_MASK_ALL ; 
 int baud_rate ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int just_started ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  sds_desc ; 
 int /*<<< orphan*/  sds_ops ; 
 int /*<<< orphan*/  sds_start_remote ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13 (char *name, int from_tty)
{
  if (name == 0)
    FUNC1 ("To open a remote debug connection, you need to specify what serial\n\
device is attached to the remote system (e.g. /dev/ttya).");

  FUNC11 (from_tty);

  FUNC12 (&sds_ops);

  sds_desc = FUNC8 (name);
  if (!sds_desc)
    FUNC2 (name);

  if (baud_rate != -1)
    {
      if (FUNC10 (sds_desc, baud_rate))
	{
	  FUNC6 (sds_desc);
	  FUNC2 (name);
	}
    }


  FUNC9 (sds_desc);

  /* If there is something sitting in the buffer we might take it as a
     response to a command, which would be bad.  */
  FUNC7 (sds_desc);

  if (from_tty)
    {
      FUNC5 ("Remote debugging using ");
      FUNC5 (name);
      FUNC5 ("\n");
    }
  FUNC4 (&sds_ops);	/* Switch to using remote target now */

  just_started = 1;

  /* Start the remote connection; if error (0), discard this target.
     In particular, if the user quits, be sure to discard it (we'd be
     in an inconsistent state otherwise).  */
  if (!FUNC0 (sds_start_remote, NULL,
		     "Couldn't establish connection to remote target\n",
		     RETURN_MASK_ALL))
    FUNC3 ();
}