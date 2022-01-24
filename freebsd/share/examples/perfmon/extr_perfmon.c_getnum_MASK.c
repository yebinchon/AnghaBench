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
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,...) ; 
 long FUNC1 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(const char *buf, int min, int max)
{
	char *ep;
	long l;

	errno = 0;
	l = FUNC1(buf, &ep, 0);
	if (*buf && !*ep && !errno) {
		if (l < min || l > max) {
			FUNC0(1, "%s: must be between %d and %d", 
			     buf, min, max);
		}
		return (int)l;
	} 

	FUNC0(1, "%s: parameter must be an integer", buf);
}