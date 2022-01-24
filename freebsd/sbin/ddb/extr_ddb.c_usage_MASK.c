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
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC2(void)
{

	FUNC1(stderr, "usage: ddb capture [-M core] [-N system] print\n");
	FUNC1(stderr, "       ddb capture [-M core] [-N system] status\n");
	FUNC1(stderr, "       ddb script scriptname\n");
	FUNC1(stderr, "       ddb script scriptname=script\n");
	FUNC1(stderr, "       ddb scripts\n");
	FUNC1(stderr, "       ddb unscript scriptname\n");
	FUNC1(stderr, "       ddb pathname\n");
	FUNC0(EX_USAGE);
}