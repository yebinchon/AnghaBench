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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ SSH_ERR_KEY_WRONG_PASSPHRASE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(void)
{
	/*
	 * Some password errors are reported at the beginning
	 * of the error queue.
	 */
	if (FUNC2(FUNC0()) ==
	    SSH_ERR_KEY_WRONG_PASSPHRASE)
		return SSH_ERR_KEY_WRONG_PASSPHRASE;
	return FUNC2(FUNC1());
}