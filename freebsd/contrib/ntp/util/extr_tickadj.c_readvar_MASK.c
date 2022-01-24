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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* progname ; 
 int FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC5(
	int ifd,
	off_t off,
	int *var
	)
{
	int i;
	
	if (FUNC2(ifd, off, L_SET) == -1)
	{
		(void) FUNC1(stderr, "%s: lseek fails: ", progname);
		FUNC3("");
		FUNC0(1);
	}
	i = FUNC4(ifd, (char *)var, sizeof(int));
	if (i < 0)
	{
		(void) FUNC1(stderr, "%s: read fails: ", progname);
		FUNC3("");
		FUNC0(1);
	}
	if (i != sizeof(int))
	{
		(void) FUNC1(stderr, "%s: read expected %d, got %d\n",
			       progname, (int)sizeof(int), i);
		FUNC0(1);
	}
	return;
}