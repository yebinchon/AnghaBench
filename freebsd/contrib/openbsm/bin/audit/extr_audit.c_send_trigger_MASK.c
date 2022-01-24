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
 int EPERM ; 
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int
FUNC2(int trigger)
{
	int error;

	error = FUNC0(&trigger);
	if (error != 0) {
		if (error == EPERM)
			FUNC1("audit requires root privileges");
		else
			FUNC1("Error sending trigger");
		return (-1);
	}

	return (0);
}