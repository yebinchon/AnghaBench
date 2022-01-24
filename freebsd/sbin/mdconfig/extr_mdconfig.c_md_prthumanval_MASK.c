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
typedef  scalar_t__ uintmax_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  HN_AUTOSCALE ; 
 int HN_B ; 
 int HN_DECIMAL ; 
 int HN_NOSPACE ; 
 scalar_t__ INT64_MAX ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*,char**,int) ; 

__attribute__((used)) static void
FUNC3(char *length)
{
	char buf[6];
	uintmax_t bytes;
	char *endptr;

	errno = 0;
	bytes = FUNC2(length, &endptr, 10);
	if (errno != 0 || *endptr != '\0' || bytes > INT64_MAX)
		return;
	FUNC0(buf, sizeof(buf), (int64_t)bytes, "",
	    HN_AUTOSCALE, HN_B | HN_NOSPACE | HN_DECIMAL);
	(void)FUNC1("%6s", buf);
}