#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  (* init ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  RDI_ConfigCPU ; 
 int /*<<< orphan*/  RDI_MatchAny ; 
 int /*<<< orphan*/  RDP_INFO ; 
 int /*<<< orphan*/  RDP_INFO_ICEBREAKER ; 
 int /*<<< orphan*/  RDP_SELECT_CONFIG ; 
 int baud_rate ; 
 TYPE_1__* callback ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  io ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  remote_rdp_ops ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stop_pc ; 
 int FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 

__attribute__((used)) static void
FUNC18 (char *args, int from_tty)
{
  int not_icebreaker;

  if (!args)
    FUNC0 ("serial port device name");

  baud_rate = 9600;

  FUNC17 (from_tty);

  io = FUNC13 (args);

  if (!io)
    FUNC3 (args);

  FUNC14 (io);

  FUNC9 (1, from_tty);


  if (from_tty)
    {
      FUNC5 ("Remote RDP debugging using %s at %d baud\n", args, baud_rate);
    }

  FUNC8 ();

  /* Need to set up the vector interception state */
  FUNC7 ();

  /*
     ** If it's an EmbeddedICE, we need to set the processor config.
     ** Assume we can always have ARM7TDI...
   */
  FUNC12 ("bw-SB", RDP_INFO, RDP_INFO_ICEBREAKER, &not_icebreaker);
  if (!not_icebreaker)
    {
      const char *CPU = "ARM7TDI";
      int ICEversion;
      int len = FUNC15 (CPU);

      FUNC12 ("bbbbw-p-SWZ",
		RDP_SELECT_CONFIG,
		RDI_ConfigCPU,	/* Aspect: set the CPU */
		len,		/* The number of bytes in the name */
		RDI_MatchAny,	/* We'll take whatever we get */
		0,		/* We'll take whatever version's there */
		CPU, len,
		&ICEversion);
    }

  /* command line initialised on 'run' */

  FUNC6 (&remote_rdp_ops);

  callback->init (callback);
  FUNC1 ();
  FUNC11 ();
  stop_pc = FUNC10 ();
  FUNC4 (FUNC2 (), -1, 1);
}