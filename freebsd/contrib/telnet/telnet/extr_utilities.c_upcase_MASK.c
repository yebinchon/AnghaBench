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
 scalar_t__ FUNC0 (int) ; 
 char FUNC1 (int) ; 

void
FUNC2(char *argument)
{
    int c;

    while ((c = *argument) != 0) {
	if (FUNC0(c)) {
	    *argument = FUNC1(c);
	}
	argument++;
    }
}