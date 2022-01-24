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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 char* FUNC1 (char const*,char) ; 

__attribute__((used)) static size_t
FUNC2(const char *s)
{
	size_t i;
	char *q;
	for (i = 0; (q = FUNC1(s, '(')) != NULL; i++, s = q + 1)
		continue;
	FUNC0(i != 0, "No parentheses found");
	return i;
}