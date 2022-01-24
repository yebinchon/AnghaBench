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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static char *
FUNC4(const char *d, const char *s)
{
	size_t dlen = FUNC3(d);
	size_t slen = FUNC3(s);
	char *p = FUNC1(dlen + slen + 1);

	FUNC0(p != NULL);
	FUNC2(p, d);
	FUNC2(p + dlen, s);
	return p;
}