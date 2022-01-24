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
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *
FUNC2(const char *s)
{
    if (s[0] == '$' && s[1] == '<') {
	s += 2;
	while (FUNC1(FUNC0(*s)) || *s == '/')
	    ++s;
	if (*s == '>')
	    ++s;
    }
    return s;
}