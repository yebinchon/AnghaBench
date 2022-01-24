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
struct statfs {int dummy; } ;
struct freebsd11_statfs {int dummy; } ;

/* Variables and functions */
 scalar_t__ INO64_FIRST ; 
 int /*<<< orphan*/  SYS_freebsd11_fstatfs ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct freebsd11_statfs*,struct statfs*) ; 
 int FUNC2 (int,struct statfs*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,struct freebsd11_statfs*) ; 

int
FUNC4(int fd, struct statfs *buf)
{
	struct freebsd11_statfs statfs11;
	int rv;

	if (FUNC0() >= INO64_FIRST)
		return (FUNC2(fd, buf));
	rv = FUNC3(SYS_freebsd11_fstatfs, fd, &statfs11);
	if (rv == 0)
		FUNC1(&statfs11, buf);
	return (rv);
}