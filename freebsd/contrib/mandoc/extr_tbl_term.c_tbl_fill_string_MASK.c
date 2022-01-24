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
struct termp {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (struct termp*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct termp*,char const*) ; 

__attribute__((used)) static void
FUNC2(struct termp *tp, const char *cp, size_t len)
{
	size_t	 i, sz;

	sz = FUNC0(tp, cp);
	for (i = 0; i < len; i += sz)
		FUNC1(tp, cp);
}