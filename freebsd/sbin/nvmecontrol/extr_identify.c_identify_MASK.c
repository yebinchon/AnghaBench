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
typedef  scalar_t__ uint32_t ;
struct cmd {int dummy; } ;
struct TYPE_2__ {char* dev; scalar_t__ nsid; } ;

/* Variables and functions */
 scalar_t__ NONE ; 
 int /*<<< orphan*/  FUNC0 (int,char**,struct cmd const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,int*,int,int) ; 
 TYPE_1__ opt ; 

__attribute__((used)) static void
FUNC7(const struct cmd *f, int argc, char *argv[])
{
	char		*path;
	int		fd;
	uint32_t	nsid;

	FUNC0(argc, argv, f);

	FUNC6(opt.dev, &fd, 1, 1);
	FUNC3(fd, &path, &nsid);
	if (nsid != 0) {
		/*
		 * We got namespace device, but we need to send IDENTIFY
		 * commands to the controller, not the namespace, since it
		 * is an admin cmd.  The namespace ID will be specified in
		 * the IDENTIFY command itself.
		 */
		FUNC1(fd);
		FUNC6(path, &fd, 1, 1);
	}
	FUNC2(path);
	if (opt.nsid != NONE)
		nsid = opt.nsid;

	if (nsid == 0)
		FUNC4(fd);
	else
		FUNC5(fd, nsid);
}