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
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct frame_info*) ; 
 struct frame_info* FUNC1 (struct frame_info*) ; 

__attribute__((used)) static struct frame_info *
FUNC2 (CORE_ADDR frame_addr)
{
  struct frame_info *frame = NULL;

  if (frame_addr == (CORE_ADDR) 0)
    return NULL;

  while (1)
    {
      frame = FUNC1 (frame);
      if (frame == NULL)
	return NULL;
      if (FUNC0 (frame) == frame_addr)
	return frame;
    }
}