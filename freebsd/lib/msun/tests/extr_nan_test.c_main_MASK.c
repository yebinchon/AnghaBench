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
 int /*<<< orphan*/  FE_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int
FUNC3(void)
{

	FUNC1("1..1\n");

	/* Die if a signalling NaN is returned */
	FUNC0(FE_INVALID);

	FUNC2("0x1234");
	FUNC2("");

	FUNC1("ok 1 - nan\n");

	return (0);
}