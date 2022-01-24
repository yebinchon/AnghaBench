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

/* Variables and functions */
 struct frame_info* FUNC0 (struct frame_info*) ; 
 struct frame_info* FUNC1 (struct frame_info*) ; 

struct frame_info *
FUNC2 (struct frame_info *frame,
		     int *level_offset_ptr)
{
  struct frame_info *prev;
  struct frame_info *frame1;

  /* Going up is simple: just do get_prev_frame enough times
     or until initial frame is reached.  */
  while (*level_offset_ptr > 0)
    {
      prev = FUNC1 (frame);
      if (prev == 0)
	break;
      (*level_offset_ptr)--;
      frame = prev;
    }
  /* Going down is just as simple.  */
  if (*level_offset_ptr < 0)
    {
      while (*level_offset_ptr < 0)
	{
	  frame1 = FUNC0 (frame);
	  if (!frame1)
	    break;
	  frame = frame1;
	  (*level_offset_ptr)++;
	}
    }
  return frame;
}