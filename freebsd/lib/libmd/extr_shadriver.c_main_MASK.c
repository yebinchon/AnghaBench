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
 int SHA ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

int
FUNC2(void)
{
	FUNC1("SHA-%d test suite:\n", SHA);

	FUNC0("");
	FUNC0("abc");
	FUNC0("message digest");
	FUNC0("abcdefghijklmnopqrstuvwxyz");
	FUNC0("ABCDEFGHIJKLMNOPQRSTUVWXYZ"
		  "abcdefghijklmnopqrstuvwxyz0123456789");
	FUNC0("1234567890123456789012345678901234567890"
		  "1234567890123456789012345678901234567890");

	return 0;
}