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
struct frame_info {int dummy; } ;
struct frame_extra_info {scalar_t__ initial_sp; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGTRAMP_FRAME ; 
 scalar_t__ TEXT_SEGMENT_BASE ; 
 int /*<<< orphan*/  FUNC0 (struct frame_info*,int /*<<< orphan*/ ) ; 
 struct frame_extra_info* FUNC1 (struct frame_info*,int) ; 
 scalar_t__ FUNC2 (struct frame_info*) ; 
 int /*<<< orphan*/ * FUNC3 (struct frame_info*) ; 

void
FUNC4 (int fromleaf, struct frame_info *fi)
{
  struct frame_extra_info *extra_info =
    FUNC1 (fi, sizeof (struct frame_extra_info));
  extra_info->initial_sp = 0;
  if (FUNC3 (fi) != NULL
      && FUNC2 (fi) < TEXT_SEGMENT_BASE)
    /* We're in get_prev_frame */
    /* and this is a special signal frame.  */
    /* (fi->pc will be some low address in the kernel, */
    /*  to which the signal handler returns).  */
    FUNC0 (fi, SIGTRAMP_FRAME);
}