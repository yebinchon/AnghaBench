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
struct package {struct package* pkg_chain; } ;
struct fs_ops {int dummy; } ;

/* Variables and functions */
 int EDOOFUS ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 struct fs_ops* exclusive_file_system ; 
 int FUNC1 (int,struct package**) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 struct package* package ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct fs_ops pkgfs_fsops ; 

int
FUNC4(const char *pkgname, struct fs_ops *proto)
{
	struct package *pkg;
	int error, fd;

	pkg = NULL;
	if (proto != &pkgfs_fsops)
		FUNC3();

	exclusive_file_system = proto;

	fd = FUNC2(pkgname, O_RDONLY);

	exclusive_file_system = NULL;

	if (fd == -1)
		return (errno);

	error = FUNC1(fd, &pkg);
	if (error) {
		FUNC0(fd);
		return (error);
	}

	if (pkg == NULL)
		return (EDOOFUS);

	pkg->pkg_chain = package;
	package = pkg;
	exclusive_file_system = &pkgfs_fsops;
	return (0);
}