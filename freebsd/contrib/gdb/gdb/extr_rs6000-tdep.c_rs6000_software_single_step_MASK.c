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
typedef  enum target_signal { ____Placeholder_target_signal } target_signal ;
struct TYPE_2__ {int address; int /*<<< orphan*/  data; } ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 int FUNC0 (int,int,int,int) ; 
 scalar_t__ errno ; 
 int FUNC1 (int,int) ; 
 int FUNC2 () ; 
 char* FUNC3 (int*,int*) ; 
 TYPE_1__* stepBreaks ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

void
FUNC6 (enum target_signal signal,
			     int insert_breakpoints_p)
{
  CORE_ADDR dummy;
  int breakp_sz;
  const char *breakp = FUNC3 (&dummy, &breakp_sz);
  int ii, insn;
  CORE_ADDR loc;
  CORE_ADDR breaks[2];
  int opcode;

  if (insert_breakpoints_p)
    {

      loc = FUNC2 ();

      insn = FUNC1 (loc, 4);

      breaks[0] = loc + breakp_sz;
      opcode = insn >> 26;
      breaks[1] = FUNC0 (opcode, insn, loc, breaks[0]);

      /* Don't put two breakpoints on the same address. */
      if (breaks[1] == breaks[0])
	breaks[1] = -1;

      stepBreaks[1].address = 0;

      for (ii = 0; ii < 2; ++ii)
	{

	  /* ignore invalid breakpoint. */
	  if (breaks[ii] == -1)
	    continue;
	  FUNC4 (breaks[ii], stepBreaks[ii].data);
	  stepBreaks[ii].address = breaks[ii];
	}

    }
  else
    {

      /* remove step breakpoints. */
      for (ii = 0; ii < 2; ++ii)
	if (stepBreaks[ii].address != 0)
	  FUNC5 (stepBreaks[ii].address,
				    stepBreaks[ii].data);
    }
  errno = 0;			/* FIXME, don't ignore errors! */
  /* What errors?  {read,write}_memory call error().  */
}