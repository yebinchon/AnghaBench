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
 int /*<<< orphan*/  LIB_BUFLENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int,char*) ; 

__attribute__((used)) static const char *
FUNC2(
	int cnt
	)
{
	char *	buf;

	if (cnt == 0)
		return "no events";

	FUNC0(buf);
	FUNC1(buf, LIB_BUFLENGTH, "%d event%s", cnt,
		 (1 == cnt)
		     ? ""
		     : "s");

	return buf;
}