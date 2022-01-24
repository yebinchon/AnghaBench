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
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t) ; 
 char* FUNC1 (char const*,char) ; 
 size_t FUNC2 (char const*) ; 

__attribute__((used)) static int
FUNC3(char *name, size_t n, const char *fn)
{
	char *p;
	size_t l;

	p = FUNC1(fn, '/');
	if (p == NULL) {
		if ((l = FUNC2(fn)) == 0)
			return (0);
	} else
		l = p - fn;
	if (l > n -1)
		return (-1);
	FUNC0(name, fn, l);
	name[l] = '\0';

	return ((int)l);
}