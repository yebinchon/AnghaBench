#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  rdi_stopped_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  QUIT ; 
#define  RDP_RESET 130 
#define  RDP_RES_SWI 129 
#define  RDP_RES_VALUE 128 
 int SERIAL_TIMEOUT ; 
 TYPE_1__ ds ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  io ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4 (void)
{
  int running = 1;

  while (running)
    {
      int res;
      res = FUNC3 (io, 1);
      while (res == SERIAL_TIMEOUT)
	{
	  QUIT;
	  FUNC1 ("Waiting for target..\n");
	  res = FUNC3 (io, 1);
	}

      switch (res)
	{
	case RDP_RES_SWI:
	  FUNC0 ();
	  break;
	case RDP_RES_VALUE:
	  FUNC2 ("B", &ds.rdi_stopped_status);
	  running = 0;
	  break;
	case RDP_RESET:
	  FUNC1 ("Target reset\n");
	  running = 0;
	  break;
	default:
	  FUNC1 ("Ignoring %x\n", res);
	  break;
	}
    }
}