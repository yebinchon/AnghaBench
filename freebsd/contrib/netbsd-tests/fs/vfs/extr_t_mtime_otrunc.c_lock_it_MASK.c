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
typedef  scalar_t__ time_t ;
struct stat {scalar_t__ st_mtime; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOCKFILE ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct stat*) ; 

__attribute__((used)) static time_t
FUNC3(void)
{
	struct stat st;

	if (FUNC2(LOCKFILE, &st) != 0)
		st.st_mtime = 0;

	int f = FUNC1(LOCKFILE, O_WRONLY|O_CREAT|O_TRUNC, 0666);
	if (f == -1) return 0;
	FUNC0(f);

	return st.st_mtime;
}