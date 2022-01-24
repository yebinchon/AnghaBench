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
struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;
struct frame_id {int dummy; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 struct frame_id FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct frame_info*) ; 
 int FUNC2 (struct gdbarch*) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 scalar_t__ FUNC4 (struct gdbarch*,struct frame_info*) ; 

__attribute__((used)) static struct frame_id
FUNC5 (struct gdbarch *gdbarch, struct frame_info *next_frame)
{
  int word_size = FUNC2 (gdbarch) / 8;
  CORE_ADDR this_sp = FUNC4 (gdbarch, next_frame);
  CORE_ADDR prev_sp = FUNC3 (this_sp, word_size);

  return FUNC0 (prev_sp + 16*word_size + 32,
                         FUNC1 (next_frame));
}