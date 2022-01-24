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
typedef  int /*<<< orphan*/  isc_assertiontype_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,int /*<<< orphan*/ ,char const*) ; 

void
FUNC2(const char *file, int line, isc_assertiontype_t type,
		     const char *cond)
{
	FUNC1(file, line, type, cond);
	FUNC0();
	/* NOTREACHED */
}