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
typedef  scalar_t__ time_t ;

/* Variables and functions */
 int /*<<< orphan*/  BFD_ENDIAN_BIG ; 
 int /*<<< orphan*/  BFD_ENDIAN_LITTLE ; 
 int /*<<< orphan*/  QUIT ; 
 int RDP_OPEN ; 
 int RDP_OPEN_TYPE_COLD ; 
 int RDP_OPEN_TYPE_RETURN_SEX ; 
 int RDP_OPEN_TYPE_WARM ; 
#define  RDP_RESET 132 
#define  RDP_RES_VALUE 131 
#define  RDP_RES_VALUE_BIG_ENDIAN 130 
#define  RDP_RES_VALUE_LITTLE_ENDIAN 129 
#define  SERIAL_TIMEOUT 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int /*<<< orphan*/  io ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ remote_debug ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  target_byte_order ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12 (int cold, int tty)
{
  int sync = 0;
  int type = cold ? RDP_OPEN_TYPE_COLD : RDP_OPEN_TYPE_WARM;
  int baudtry = 9600;

  time_t now = FUNC11 (0);
  time_t stop_time = now + 10;	/* Try and sync for 10 seconds, then give up */


  while (FUNC11 (0) < stop_time && !sync)
    {
      int restype;
      QUIT;

      FUNC7 (io);
      FUNC8 (io);

      if (tty)
	FUNC4 ("Trying to connect at %d baud.\n", baudtry);

      /*
         ** It seems necessary to reset an EmbeddedICE to get it going.
         ** This has the side benefit of displaying the startup banner.
       */
      if (cold)
	{
	  FUNC5 (RDP_RESET);
	  while ((restype = FUNC9 (io, 1)) > 0)
	    {
	      switch (restype)
		{
		case SERIAL_TIMEOUT:
		  break;
		case RDP_RESET:
		  /* Sent at start of reset process: ignore */
		  break;
		default:
		  FUNC4 ("%c", FUNC2 (restype) ? restype : ' ');
		  break;
		}
	    }

	  if (restype == 0)
	    {
	      /* Got end-of-banner mark */
	      FUNC3 ("\n");
	    }
	}

      FUNC5 (RDP_OPEN);

      FUNC5 (type | RDP_OPEN_TYPE_RETURN_SEX);
      FUNC6 (0);

      while (!sync && (restype = FUNC9 (io, 1)) > 0)
	{
	  if (remote_debug)
	    FUNC1 (gdb_stdlog, "[%02x]\n", restype);

	  switch (restype)
	    {
	    case SERIAL_TIMEOUT:
	      break;

	    case RDP_RESET:
	      while ((restype = FUNC9 (io, 1)) == RDP_RESET)
		;
	      do
		{
		  FUNC4 ("%c", FUNC2 (restype) ? restype : ' ');
		}
	      while ((restype = FUNC9 (io, 1)) > 0);

	      if (tty)
		{
		  FUNC4 ("\nThe board has sent notification that it was reset.\n");
		  FUNC4 ("Waiting for it to settle down...\n");
		}
	      FUNC10 (3);
	      if (tty)
		FUNC4 ("\nTrying again.\n");
	      cold = 0;
	      break;

	    default:
	      break;

	    case RDP_RES_VALUE:
	      {
		int resval = FUNC9 (io, 1);

		if (remote_debug)
		  FUNC1 (gdb_stdlog, "[%02x]\n", resval);

		switch (resval)
		  {
		  case SERIAL_TIMEOUT:
		    break;
		  case RDP_RES_VALUE_LITTLE_ENDIAN:
#if 0
		    /* FIXME: cagney/2003-11-22: Ever since the ARM
                       was multi-arched (in 2002-02-08), this
                       assignment has had no effect.  There needs to
                       be some sort of check/decision based on the
                       current architecture's byte-order vs the remote
                       target's byte order.  For the moment disable
                       the assignment to keep things building.  */
		    target_byte_order = BFD_ENDIAN_LITTLE;
#endif
		    sync = 1;
		    break;
		  case RDP_RES_VALUE_BIG_ENDIAN:
#if 0
		    /* FIXME: cagney/2003-11-22: Ever since the ARM
                       was multi-arched (in 2002-02-08), this
                       assignment has had no effect.  There needs to
                       be some sort of check/decision based on the
                       current architecture's byte-order vs the remote
                       target's byte order.  For the moment disable
                       the assignment to keep things building.  */
		    target_byte_order = BFD_ENDIAN_BIG;
#endif
		    sync = 1;
		    break;
		  default:
		    break;
		  }
	      }
	    }
	}
    }

  if (!sync)
    {
      FUNC0 ("Couldn't reset the board, try pressing the reset button");
    }
}