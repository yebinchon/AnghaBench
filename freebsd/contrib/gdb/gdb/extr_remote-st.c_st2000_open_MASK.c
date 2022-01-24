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
 char* LOG_FILE ; 
 int /*<<< orphan*/  baudrate ; 
 char* dev_name ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/ * log_file ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (char*,char*,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  st2000_desc ; 
 int /*<<< orphan*/  st2000_ops ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 char* target_shortname ; 

__attribute__((used)) static void
FUNC14 (char *args, int from_tty)
{
  int n;
  char junk[100];

  FUNC13 (from_tty);

  n = FUNC11 (args, " %s %d %s", dev_name, &baudrate, junk);

  if (n != 2)
    FUNC0 ("Bad arguments.  Usage: target st2000 <device> <speed>\n\
or target st2000 <host> <port>\n");

  FUNC12 (0);

  st2000_desc = FUNC8 (dev_name);

  if (!st2000_desc)
    FUNC3 (dev_name);

  if (FUNC10 (st2000_desc, baudrate))
    {
      FUNC7 (dev_name);
      FUNC3 (dev_name);
    }

  FUNC9 (st2000_desc);

  FUNC6 (&st2000_ops);

#if defined (LOG_FILE)
  log_file = fopen (LOG_FILE, "w");
  if (log_file == NULL)
    perror_with_name (LOG_FILE);
#endif

  /* Hello?  Are you there?  */
  FUNC5 ("\003");	/* ^C wakes up dbug */

  FUNC1 (1);

  if (from_tty)
    FUNC4 ("Remote %s connected to %s\n", target_shortname,
	    dev_name);
}