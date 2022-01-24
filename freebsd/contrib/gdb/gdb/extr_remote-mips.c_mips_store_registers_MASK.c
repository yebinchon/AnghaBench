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
 int NUM_REGS ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  mips_receive_wait ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (int regno)
{
  int err;

  if (regno == -1)
    {
      for (regno = 0; regno < NUM_REGS; regno++)
	FUNC5 (regno);
      return;
    }

  FUNC2 ('R', FUNC1 (regno),
		FUNC3 (regno),
		&err, mips_receive_wait, NULL);
  if (err)
    FUNC0 ("Can't write register %d: %s", regno, FUNC4 (errno));
}