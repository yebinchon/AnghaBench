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
 int /*<<< orphan*/  FUNC0 (char) ; 

char *FUNC1(char *nodedesc)
{
	int i = 0;

	nodedesc[63] = '\0';
	while (nodedesc[i]) {
		if (!FUNC0(nodedesc[i]))
			nodedesc[i] = ' ';
		i++;
	}

	return (nodedesc);
}