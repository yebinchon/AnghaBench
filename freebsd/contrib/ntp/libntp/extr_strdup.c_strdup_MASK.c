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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int FUNC3 (char const*) ; 

char *
FUNC4(
	const char *s
	)
{
	size_t	octets;
	char *	cp;

	FUNC0(s);
	octets = FUNC3(s) + 1;
	if ((cp = FUNC1(octets)) == NULL)
		return NULL;
	FUNC2(cp, s, octets);

	return cp;
}