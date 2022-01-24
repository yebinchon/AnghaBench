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
 char* FUNC0 (char const*) ; 
 long FUNC1 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(const char *var, int def)
{
	const char *cp;
	char *ep;
	long val;

	val = def;
	cp = FUNC0(var);
	if (cp && *cp) {
		val = FUNC1(cp, &ep, 0);
		if ((ep && *ep) || val != (int)val) {
			val = def;
		}
	}
	return (int)val;
}