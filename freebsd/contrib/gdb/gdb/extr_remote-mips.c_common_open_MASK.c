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
typedef  enum mips_monitor_type { ____Placeholder_mips_monitor_type } mips_monitor_type ;

/* Variables and functions */
 int baud_rate ; 
 char** FUNC0 (char*) ; 
 struct target_ops* current_ops ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 
 int /*<<< orphan*/ * mips_desc ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int mips_is_open ; 
 int mips_monitor ; 
 int /*<<< orphan*/ * mips_monitor_prompt ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct target_ops*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 void* FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  stop_pc ; 
 char* FUNC18 (char*,char) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int tftp_in_use ; 
 char* tftp_localname ; 
 char* tftp_name ; 
 void* udp_desc ; 
 int udp_in_use ; 
 int /*<<< orphan*/  FUNC20 (struct target_ops*) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 void* FUNC22 (char const*) ; 

__attribute__((used)) static void
FUNC23 (struct target_ops *ops, char *name, int from_tty,
	     enum mips_monitor_type new_monitor,
	     const char *new_monitor_prompt)
{
  char *ptype;
  char *serial_port_name;
  char *remote_name = 0;
  char *local_name = 0;
  char **argv;

  if (name == 0)
    FUNC2 (
	    "To open a MIPS remote debugging connection, you need to specify what serial\n\
device is attached to the target board (e.g., /dev/ttya).\n"
	    "If you want to use TFTP to download to the board, specify the name of a\n"
	    "temporary file to be used by GDB for downloads as the second argument.\n"
	    "This filename must be in the form host:filename, where host is the name\n"
	    "of the host running the TFTP server, and the file must be readable by the\n"
	    "world.  If the local name of the temporary file differs from the name as\n"
	    "seen from the board via TFTP, specify that name as the third parameter.\n");

  /* Parse the serial port name, the optional TFTP name, and the
     optional local TFTP name.  */
  if ((argv = FUNC0 (name)) == NULL)
    FUNC7 (0);
  FUNC5 (argv);

  serial_port_name = FUNC22 (argv[0]);
  if (argv[1])			/* remote TFTP name specified? */
    {
      remote_name = argv[1];
      if (argv[2])		/* local TFTP filename specified? */
	local_name = argv[2];
    }

  FUNC19 (from_tty);

  if (mips_is_open)
    FUNC20 (current_ops);

  /* Open and initialize the serial port.  */
  mips_desc = FUNC15 (serial_port_name);
  if (mips_desc == NULL)
    FUNC8 (serial_port_name);

  if (baud_rate != -1)
    {
      if (FUNC17 (mips_desc, baud_rate))
	{
	  FUNC14 (mips_desc);
	  FUNC8 (serial_port_name);
	}
    }

  FUNC16 (mips_desc);

  /* Open and initialize the optional download port.  If it is in the form
     hostname#portnumber, it's a UDP socket.  If it is in the form
     hostname:filename, assume it's the TFTP filename that must be
     passed to the DDB board to tell it where to get the load file.  */
  if (remote_name)
    {
      if (FUNC18 (remote_name, '#'))
	{
	  udp_desc = FUNC15 (remote_name);
	  if (!udp_desc)
	    FUNC8 ("Unable to open UDP port");
	  udp_in_use = 1;
	}
      else
	{
	  /* Save the remote and local names of the TFTP temp file.  If
	     the user didn't specify a local name, assume it's the same
	     as the part of the remote name after the "host:".  */
	  if (tftp_name)
	    FUNC21 (tftp_name);
	  if (tftp_localname)
	    FUNC21 (tftp_localname);
	  if (local_name == NULL)
	    if ((local_name = FUNC18 (remote_name, ':')) != NULL)
	      local_name++;	/* skip over the colon */
	  if (local_name == NULL)
	    local_name = remote_name;	/* local name same as remote name */
	  tftp_name = FUNC22 (remote_name);
	  tftp_localname = FUNC22 (local_name);
	  tftp_in_use = 1;
	}
    }

  current_ops = ops;
  mips_is_open = 1;

  /* Reset the expected monitor prompt if it's never been set before.  */
  if (mips_monitor_prompt == NULL)
    mips_monitor_prompt = FUNC22 (new_monitor_prompt);
  mips_monitor = new_monitor;

  FUNC6 ();

  if (from_tty)
    FUNC10 ("Remote MIPS debugging using %s\n", serial_port_name);

  /* Switch to using remote target now.  */
  FUNC11 (ops);

  /* FIXME: Should we call start_remote here?  */

  /* Try to figure out the processor model if possible.  */
  FUNC1 ();

  /* This is really the job of start_remote however, that makes an
     assumption that the target is about to print out a status message
     of some sort.  That doesn't happen here (in fact, it may not be
     possible to get the monitor to send the appropriate packet).  */

  FUNC3 ();
  FUNC13 ();
  stop_pc = FUNC12 ();
  FUNC9 (FUNC4 (), -1, 1);
  FUNC21 (serial_port_name);
}