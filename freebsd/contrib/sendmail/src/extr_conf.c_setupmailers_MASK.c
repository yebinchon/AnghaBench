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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC3()
{
	char buf[100];

	(void) FUNC2(buf, "prog, P=/bin/sh, F=lsouDq9, T=X-Unix/X-Unix/X-Unix, A=sh -c \201u",
			sizeof(buf));
	FUNC1(buf);

	(void) FUNC2(buf, "*file*, P=[FILE], F=lsDFMPEouq9, T=X-Unix/X-Unix/X-Unix, A=FILE \201u",
			sizeof(buf));
	FUNC1(buf);

	(void) FUNC2(buf, "*include*, P=/dev/null, F=su, A=INCLUDE \201u",
			sizeof(buf));
	FUNC1(buf);
	FUNC0();
}