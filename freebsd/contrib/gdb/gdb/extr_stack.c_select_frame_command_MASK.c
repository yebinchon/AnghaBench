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
 int /*<<< orphan*/  deprecated_selected_frame ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct frame_info* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  target_has_stack ; 

void
FUNC5 (char *level_exp, int from_tty)
{
  struct frame_info *frame;
  int level = FUNC1 (deprecated_selected_frame);

  if (!target_has_stack)
    FUNC0 ("No stack.");

  frame = FUNC2 (level_exp);

  FUNC3 (frame);
  if (level != FUNC1 (deprecated_selected_frame))
    FUNC4 (FUNC1 (deprecated_selected_frame));
}