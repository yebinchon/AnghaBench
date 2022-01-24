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
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 size_t FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char const*,size_t) ; 

__attribute__((used)) static const char *
FUNC4(const char **buf, const char *token)
{
	const char	*p, *orig;
	size_t		tlen;

	tlen = FUNC2(token);
	p = *buf;
	FUNC1(p);
	orig = p;
	if (FUNC3(p, token, tlen) != 0)
		return NULL;
	p += tlen;
	if (*p != '\0' && !FUNC0(*p))
		return NULL;
	FUNC1(p);
	orig = *buf;
	*buf = p;
	return orig;
}