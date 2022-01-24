#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ nvp_type; } ;
typedef  TYPE_1__ nvpair_t ;
typedef  int /*<<< orphan*/  fd ;

/* Variables and functions */
 int /*<<< orphan*/  F_DUPFD_CLOEXEC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ NV_TYPE_DESCRIPTOR_ARRAY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int*,int,int) ; 

int
FUNC5(nvpair_t *nvp, const int value)
{
	int fd;

	FUNC0(nvp);
	FUNC1(nvp->nvp_type == NV_TYPE_DESCRIPTOR_ARRAY);
	fd = FUNC3(value, F_DUPFD_CLOEXEC, 0);
	if (fd == -1) {
		return (-1);
	}
	if (FUNC4(nvp, &fd, sizeof(fd), sizeof(fd)) == -1) {
		FUNC2(fd);
		return (-1);
	}
	return (0);
}