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
struct stat {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;
struct TYPE_2__ {scalar_t__ md_mediasize; int /*<<< orphan*/  md_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char const*) ; 
 int FUNC4 (int,struct stat*) ; 
 TYPE_1__ mdio ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(const char *fn)
{
	struct stat sb;
	int fd;

	if (FUNC6(fn, mdio.md_file) == NULL)
		FUNC2(1, "could not find full path for %s", fn);
	fd = FUNC5(mdio.md_file, O_RDONLY);
	if (fd < 0)
		FUNC2(1, "could not open %s", fn);
	if (FUNC4(fd, &sb) == -1)
		FUNC2(1, "could not stat %s", fn);
	if (!FUNC0(sb.st_mode))
		FUNC3(1, "%s is not a regular file", fn);
	if (mdio.md_mediasize == 0)
		mdio.md_mediasize = sb.st_size;
	FUNC1(fd);
}