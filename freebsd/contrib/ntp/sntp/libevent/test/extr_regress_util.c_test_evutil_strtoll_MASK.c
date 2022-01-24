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
typedef  int ev_int64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char**,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(void *ptr)
{
	const char *s;
	char *endptr;

	FUNC1(FUNC0("5000000000", NULL, 10) ==
		((ev_int64_t)5000000)*1000);
	FUNC1(FUNC0("-5000000000", NULL, 10) ==
		((ev_int64_t)5000000)*-1000);
	s = " 99999stuff";
	FUNC1(FUNC0(s, &endptr, 10) == (ev_int64_t)99999);
	FUNC1(endptr == s+6);
	FUNC1(FUNC0("foo", NULL, 10) == 0);
 }