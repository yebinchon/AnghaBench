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
struct hostinfo {char* name; scalar_t__ addrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

void
FUNC1(register struct hostinfo *hi)
{
	if (hi->name != NULL) {
		FUNC0(hi->name);
		hi->name = NULL;
	}
	FUNC0((char *)hi->addrs);
	FUNC0((char *)hi);
}