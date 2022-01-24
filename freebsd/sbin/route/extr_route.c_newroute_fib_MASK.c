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
 int FUNC0 (char,int,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static int
FUNC3(int fib, char *cmd, int flags)
{
	int error;

	error = FUNC1(fib);
	if (error) {
		FUNC2("fib number %d is ignored", fib);
		return (error);
	}

	error = FUNC0(*cmd, flags, fib);
	return (error);
}