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
 int /*<<< orphan*/  baudrate ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_name ; 
 int /*<<< orphan*/  e7000_desc ; 
 int /*<<< orphan*/  e7000_ops ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  e7000_start_remote ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  target_shortname ; 

__attribute__((used)) static void
FUNC10 (char *args, int from_tty)
{
  int n;

  FUNC9 (from_tty);

  n = FUNC1 (args, dev_name, baudrate);

  FUNC4 (&e7000_ops);

  e7000_desc = FUNC6 (dev_name);

  if (!e7000_desc)
    FUNC2 (dev_name);

  if (FUNC8 (e7000_desc, baudrate))
    {
      FUNC5 (e7000_desc);
      FUNC2 (dev_name);
    }
  FUNC7 (e7000_desc);

  /* Start the remote connection; if error (0), discard this target.
     In particular, if the user quits, be sure to discard it
     (we'd be in an inconsistent state otherwise).  */
  if (!FUNC0 (e7000_start_remote, (char *) 0,
       "Couldn't establish connection to remote target\n", RETURN_MASK_ALL))
    if (from_tty)
      FUNC3 ("Remote target %s connected to %s\n", target_shortname,
		       dev_name);
}