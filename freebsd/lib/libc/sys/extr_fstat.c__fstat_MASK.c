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
struct stat {int dummy; } ;
struct freebsd11_stat {int dummy; } ;

/* Variables and functions */
 scalar_t__ INO64_FIRST ; 
 int /*<<< orphan*/  SYS_freebsd11_fstat ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct freebsd11_stat*,struct stat*) ; 
 int FUNC2 (int,struct stat*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,struct freebsd11_stat*) ; 

int
FUNC4(int fd, struct stat *sb)
{
	struct freebsd11_stat stat11;
	int rv;

	if (FUNC0() >= INO64_FIRST)
		return (FUNC2(fd, sb));
	rv = FUNC3(SYS_freebsd11_fstat, fd, &stat11);
	if (rv == 0)
		FUNC1(&stat11, sb);
	return (rv);
}