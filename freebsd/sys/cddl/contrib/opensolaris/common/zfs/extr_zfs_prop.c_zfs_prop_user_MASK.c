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
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 

boolean_t
FUNC2(const char *name)
{
	int i;
	char c;
	boolean_t foundsep = B_FALSE;

	for (i = 0; i < FUNC0(name); i++) {
		c = name[i];
		if (!FUNC1(c))
			return (B_FALSE);
		if (c == ':')
			foundsep = B_TRUE;
	}

	if (!foundsep)
		return (B_FALSE);

	return (B_TRUE);
}