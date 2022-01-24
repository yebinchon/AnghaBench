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
 int O_NOCTTY ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  line ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int
FUNC4(char *li)
{
	int t;

	/*
	 * Make sure that other people can't open the
	 * slave side of the connection.
	 */
	(void) FUNC1(li, 0, 0);
	(void) FUNC0(li, 0600);

	(void) FUNC3(li);

	t = FUNC2(line, O_RDWR|O_NOCTTY);

	if (t < 0)
		return(-1);

	return(t);
}