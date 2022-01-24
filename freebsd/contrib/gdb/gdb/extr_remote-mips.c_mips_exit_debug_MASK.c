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
struct cleanup {int dummy; } ;

/* Variables and functions */
 scalar_t__ MON_IDT ; 
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 struct cleanup* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mips_exit_cleanups ; 
 int mips_exiting ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ mips_monitor ; 
 char* mips_monitor_prompt ; 
 scalar_t__ mips_need_reply ; 
 int /*<<< orphan*/  mips_receive_wait ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4 (void)
{
  int err;
  struct cleanup *old_cleanups = FUNC1 (mips_exit_cleanups, NULL);

  mips_exiting = 1;

  if (mips_monitor != MON_IDT)
    {
      /* The DDB (NEC) and MiniRISC (LSI) versions of PMON exit immediately,
         so we do not get a reply to this command: */
      FUNC3 ('x', 0, 0, NULL, mips_receive_wait, NULL);
      mips_need_reply = 0;
      if (!FUNC2 (" break!"))
	return -1;
    }
  else
    FUNC3 ('x', 0, 0, &err, mips_receive_wait, NULL);

  if (!FUNC2 (mips_monitor_prompt))
    return -1;

  FUNC0 (old_cleanups);

  return 0;
}