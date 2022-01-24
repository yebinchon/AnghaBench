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

/* Variables and functions */
 scalar_t__ deprecated_selected_frame ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ target_has_stack ; 

__attribute__((used)) static void
FUNC3 (char *level_exp, int from_tty)
{
  if (target_has_stack == 0 || deprecated_selected_frame == 0)
    FUNC0 ("No stack.");
  FUNC2 (deprecated_selected_frame,
			  FUNC1 (deprecated_selected_frame), 1);
}