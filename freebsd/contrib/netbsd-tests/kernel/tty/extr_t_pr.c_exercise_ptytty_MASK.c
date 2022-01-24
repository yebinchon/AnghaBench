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
 int FREAD ; 
 int FWRITE ; 
 int /*<<< orphan*/  TIOCFLUSH ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static int
FUNC2(int master, int slave)
{
	int error, flags;

	/*
	 * send a few bytes from master to slave and read them back
	 */
	error = FUNC1(master, slave);
	if (error)
		return error;

	flags = FREAD|FWRITE;
	FUNC0(master, TIOCFLUSH, &flags);

	/*
	 * and the same in the other direction
	 */
	error = FUNC1(slave, master);
	if (error)
		return error;

	flags = FREAD|FWRITE;
	FUNC0(master, TIOCFLUSH, &flags);
	return 0;
}