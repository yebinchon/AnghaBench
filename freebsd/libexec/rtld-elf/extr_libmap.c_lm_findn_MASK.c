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
typedef  int /*<<< orphan*/  pathbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t const) ; 
 char* FUNC3 (size_t const) ; 

char *
FUNC4(const char *p, const char *f, const size_t n)
{
	char pathbuf[64], *s, *t;

	if (n < sizeof(pathbuf) - 1)
		s = pathbuf;
	else
		s = FUNC3(n + 1);
	FUNC2(s, f, n);
	s[n] = '\0';
	t = FUNC1(p, s);
	if (s != pathbuf)
		FUNC0(s);
	return (t);
}