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
typedef  int /*<<< orphan*/  ipfw_obj_header ;

/* Variables and functions */
#define  EFBIG 129 
#define  EINVAL 128 
 int /*<<< orphan*/  EX_USAGE ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC3(ipfw_obj_header *oh, char *second)
{

	if (FUNC1(second) != 0)
		FUNC0(EX_USAGE, "table name %s is invalid", second);

	if (FUNC2(oh, second) == 0)
		return (0);

	switch (errno) {
	case EINVAL:
		FUNC0(EX_USAGE, "Unable to swap table: check types");
	case EFBIG:
		FUNC0(EX_USAGE, "Unable to swap table: check limits");
	}

	return (0);
}