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
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,int) ; 

__attribute__((used)) static int
FUNC2(const char **opts, const char *term)
{
	if (FUNC1((*opts), term, FUNC0(term)) == 0 &&
	    (*opts)[FUNC0(term)] == '=') {
		*opts += FUNC0(term) + 1;
		return 1;
	}
	return 0;
}