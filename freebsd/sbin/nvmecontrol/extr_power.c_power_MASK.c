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
struct nvme_controller_data {int dummy; } ;
struct cmd {int dummy; } ;
struct TYPE_2__ {scalar_t__ power; int /*<<< orphan*/  workload; scalar_t__ list; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ POWER_NONE ; 
 int /*<<< orphan*/  FUNC0 (int,char**,struct cmd const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char**,struct cmd const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*,int,int) ; 
 TYPE_1__ opt ; 
 int /*<<< orphan*/  FUNC6 (struct nvme_controller_data*) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,struct nvme_controller_data*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC10(const struct cmd *f, int argc, char *argv[])
{
	struct nvme_controller_data	cdata;
	int				fd;

	FUNC1(argc, argv, f);

	if (opt.list && opt.power != POWER_NONE) {
		FUNC4(stderr, "Can't set power and list power states\n");
		FUNC0(argc, argv, f);
	}

	FUNC5(opt.dev, &fd, 1, 1);

	if (opt.list) {
		FUNC9(fd, &cdata);
		FUNC6(&cdata);
		goto out;
	}

	if (opt.power != POWER_NONE) {
		FUNC7(fd, opt.power, opt.workload, 0);
		goto out;
	}
	FUNC8(fd);

out:
	FUNC2(fd);
	FUNC3(0);
}