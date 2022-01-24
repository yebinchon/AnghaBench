#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cmd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_RESET_CONTROLLER ; 
 int /*<<< orphan*/  FUNC0 (int,char**,struct cmd const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int,int) ; 
 TYPE_1__ opt ; 
 size_t optind ; 

__attribute__((used)) static void
FUNC5(const struct cmd *f, int argc, char *argv[])
{
	int	fd;

	FUNC0(argc, argv, f);
	FUNC4(opt.dev, &fd, 1, 1);

	if (FUNC3(fd, NVME_RESET_CONTROLLER) < 0)
		FUNC1(1, "reset request to %s failed", argv[optind]);

	FUNC2(0);
}