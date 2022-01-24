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
struct frame_info {int dummy; } ;
struct TYPE_2__ {int wordsize; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct frame_info*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ SIGTRAMP_FRAME ; 
 scalar_t__ SIG_FRAME_FP_OFFSET ; 
 int /*<<< orphan*/  current_gdbarch ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 () ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct frame_info*) ; 
 scalar_t__ FUNC7 (struct frame_info*) ; 
 scalar_t__ FUNC8 (struct frame_info*) ; 
 struct frame_info* FUNC9 (struct frame_info*) ; 
 scalar_t__ FUNC10 (scalar_t__,int) ; 

CORE_ADDR
FUNC11 (struct frame_info *thisframe)
{
  CORE_ADDR fp, fpp, lr;
  int wordsize = FUNC5 (current_gdbarch)->wordsize;

  if (FUNC2 (FUNC7 (thisframe),
				   FUNC6 (thisframe),
				   FUNC6 (thisframe)))
    /* A dummy frame always correctly chains back to the previous
       frame.  */
    return FUNC10 (FUNC6 (thisframe), wordsize);

  if (FUNC3 (FUNC7 (thisframe))
      || FUNC7 (thisframe) == FUNC4 ())
    return 0;

  if ((FUNC8 (thisframe) == SIGTRAMP_FRAME))
    fp = FUNC10 (FUNC6 (thisframe) + SIG_FRAME_FP_OFFSET,
			   wordsize);
  else if (FUNC9 (thisframe) != NULL
	   && (FUNC8 (FUNC9 (thisframe)) == SIGTRAMP_FRAME)
	   && (FUNC1 ()
	       && FUNC0 (thisframe)))
    /* A frameless function interrupted by a signal did not change the
       frame pointer.  */
    fp = FUNC6 (thisframe);
  else
    fp = FUNC10 (FUNC6 (thisframe), wordsize);
  return fp;
}