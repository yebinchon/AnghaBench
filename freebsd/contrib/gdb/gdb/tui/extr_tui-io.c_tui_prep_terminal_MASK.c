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
 int /*<<< orphan*/  rl_prompt ; 
 int /*<<< orphan*/  tui_rl_saved_prompt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (int notused1)
{
  /* Save the prompt registered in readline to correctly display it.
     (we can't use gdb_prompt() due to secondary prompts and can't use
     rl_prompt because it points to an alloca buffer).  */
  FUNC0 (tui_rl_saved_prompt);
  tui_rl_saved_prompt = FUNC1 (rl_prompt);
}