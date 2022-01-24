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
 int LineNo ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 char* path_fstab ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(int err)
{
	char *p;
	char num[30];

	(void)FUNC0(STDERR_FILENO, "fstab: ", 7);
	(void)FUNC0(STDERR_FILENO, path_fstab, FUNC3(path_fstab));
	(void)FUNC0(STDERR_FILENO, ":", 1);
	FUNC1(num, "%d: ", LineNo);
	(void)FUNC0(STDERR_FILENO, num, FUNC3(num));
	p = FUNC2(err);
	(void)FUNC0(STDERR_FILENO, p, FUNC3(p));
	(void)FUNC0(STDERR_FILENO, "\n", 1);
}