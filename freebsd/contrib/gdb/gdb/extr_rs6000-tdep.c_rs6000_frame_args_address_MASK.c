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
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct frame_info*) ; 
 struct frame_extra_info* FUNC1 (struct frame_info*) ; 

__attribute__((used)) static CORE_ADDR
FUNC2 (struct frame_info *fi)
{
  struct frame_extra_info *extra_info = FUNC1 (fi);
  if (extra_info->initial_sp != 0)
    return extra_info->initial_sp;
  else
    return FUNC0 (fi);
}