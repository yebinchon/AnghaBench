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
typedef  unsigned long uintmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,double) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static const char *
FUNC2(uintmax_t u)
{
	static char buf[32];
	double d;

	if (u == 0) {
		FUNC1(buf, "0B");
	} else if (u > 2000000000UL) {
		d = (double)u / 1e9;
		FUNC0(buf, "%.1fG", d);
	} else if (u > 2000000UL) {
		d = (double)u / 1e6;
		FUNC0(buf, "%.1fM", d);
	} else {
		d = (double)u / 1e3;
		FUNC0(buf, "%.1fK", d);
	}

	return (buf);
}