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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int FUNC2 (char*) ; 

int
FUNC3(char *path)
{
	int s;
	if ((s = FUNC2(path)) < 0)
		return (-1);

	if (FUNC1(s, 5) < 0) {
		FUNC0(s);
		return (-1);
	}
	return (s);
}