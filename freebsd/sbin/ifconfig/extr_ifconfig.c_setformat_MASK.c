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
 void* f_addr ; 
 void* f_ether ; 
 void* f_inet ; 
 void* f_inet6 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,char) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 void* FUNC3 (char*) ; 
 char* FUNC4 (char**,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static void FUNC6(char *input)
{
	char	*formatstr, *category, *modifier; 

	formatstr = FUNC3(input);
	while ((category = FUNC4(&formatstr, ",")) != NULL) {
		modifier = FUNC1(category, ':');
		if (modifier == NULL || modifier[1] == '\0') {
			FUNC5("Skipping invalid format specification: %s\n",
			    category);
			continue;
		}

		/* Split the string on the separator, then seek past it */
		modifier[0] = '\0';
		modifier++;

		if (FUNC2(category, "addr") == 0)
			f_addr = FUNC3(modifier);
		else if (FUNC2(category, "ether") == 0)
			f_ether = FUNC3(modifier);
		else if (FUNC2(category, "inet") == 0)
			f_inet = FUNC3(modifier);
		else if (FUNC2(category, "inet6") == 0)
			f_inet6 = FUNC3(modifier);
	}
	FUNC0(formatstr);
}