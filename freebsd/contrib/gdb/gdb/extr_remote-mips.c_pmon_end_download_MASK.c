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
struct stat {int st_mode; } ;

/* Variables and functions */
#define  MON_LSI 128 
 int S_IROTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int mips_monitor ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 scalar_t__ FUNC11 (char*) ; 
 int /*<<< orphan*/ * tftp_file ; 
 scalar_t__ tftp_in_use ; 
 int /*<<< orphan*/  tftp_localname ; 
 char* tftp_name ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 char* FUNC13 (scalar_t__) ; 

__attribute__((used)) static void
FUNC14 (int final, int bintotal)
{
  char hexnumber[9];		/* includes '\0' space */

  if (tftp_in_use)
    {
      static char *load_cmd_prefix = "load -b -s ";
      char *cmd;
      struct stat stbuf;

      /* Close off the temporary file containing the load data.  */
      FUNC1 (tftp_file);
      tftp_file = NULL;

      /* Make the temporary file readable by the world.  */
      if (FUNC8 (tftp_localname, &stbuf) == 0)
	FUNC0 (tftp_localname, stbuf.st_mode | S_IROTH);

      /* Must reinitialize the board to prevent PMON from crashing.  */
      FUNC3 ("initEther\r", -1);

      /* Send the load command.  */
      cmd = FUNC13 (FUNC11 (load_cmd_prefix) + FUNC11 (tftp_name) + 2);
      FUNC10 (cmd, load_cmd_prefix);
      FUNC9 (cmd, tftp_name);
      FUNC9 (cmd, "\r");
      FUNC3 (cmd, 0);
      FUNC12 (cmd);
      if (!FUNC2 ("Downloading from "))
	return;
      if (!FUNC2 (tftp_name))
	return;
      if (!FUNC2 (", ^C to abort\r\n"))
	return;
    }

  /* Wait for the stuff that PMON prints after the load has completed.
     The timeout value for use in the tftp case (15 seconds) was picked
     arbitrarily but might be too small for really large downloads. FIXME. */
  switch (mips_monitor)
    {
    case MON_LSI:
      FUNC4 ("termination");
      FUNC5 ("Entry address is ", final);
      if (!FUNC6 (bintotal))
	return;
      break;
    default:
      FUNC5 ("Entry Address  = ", final);
      FUNC4 ("termination");
      if (!FUNC6 (bintotal))
	return;
      break;
    }

  if (tftp_in_use)
    FUNC7 (tftp_localname);	/* Remove temporary file */
}