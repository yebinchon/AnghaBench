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
typedef  int uint32_t ;
struct cmd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char**,struct cmd const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char**,int*) ; 
 TYPE_1__ nsid_opt ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC6(const struct cmd *f, int argc, char *argv[])
{
	char		*path;
	int		fd;
	uint32_t	nsid;

	FUNC0(argc, argv, f);

	FUNC4(nsid_opt.dev, &fd, 1, 1);
	FUNC3(fd, &path, &nsid);
	FUNC1(fd);
	FUNC5("%s\t%u\n", path, nsid);
	FUNC2(path);
}