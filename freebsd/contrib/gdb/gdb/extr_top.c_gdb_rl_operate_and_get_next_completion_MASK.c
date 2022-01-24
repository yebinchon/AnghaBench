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
 int /*<<< orphan*/ * after_char_processing_hook ; 
 int operate_saved_history ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * rl_pre_input_hook ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 

__attribute__((used)) static void
FUNC3 (void)
{
  int delta = FUNC2 () - operate_saved_history;
  /* The `key' argument to rl_get_previous_history is ignored.  */
  FUNC0 (delta, 0);
  operate_saved_history = -1;

  /* readline doesn't automatically update the display for us.  */
  FUNC1 ();

  after_char_processing_hook = NULL;
  rl_pre_input_hook = NULL;
}