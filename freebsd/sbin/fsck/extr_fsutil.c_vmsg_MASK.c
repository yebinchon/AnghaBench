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
typedef  int /*<<< orphan*/  va_list ;

/* Variables and functions */
 char* dev ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 () ; 
 scalar_t__ preen ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(int fatal, const char *fmt, va_list ap)
{
	if (!fatal && preen)
		(void) FUNC2("%s: ", dev);

	(void) FUNC3(fmt, ap);

	if (fatal && preen)
		(void) FUNC2("\n");

	if (fatal && preen) {
		(void) FUNC2(
		    "%s: UNEXPECTED INCONSISTENCY; RUN %s MANUALLY.\n",
		    dev, FUNC1());
		FUNC0(8);
	}
}