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
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  L_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* progname ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC4 (int,char*,int) ; 

__attribute__((used)) static void
FUNC5(
	int ofd,
	off_t off,
	int var
	)
{
	
	if (FUNC2(ofd, off, L_SET) == -1)
	{
		(void) FUNC1(stderr, "%s: lseek fails: ", progname);
		FUNC3("");
		FUNC0(1);
	}
	if (FUNC4(ofd, (char *)&var, sizeof(int)) != sizeof(int))
	{
		(void) FUNC1(stderr, "%s: write fails: ", progname);
		FUNC3("");
		FUNC0(1);
	}
	return;
}