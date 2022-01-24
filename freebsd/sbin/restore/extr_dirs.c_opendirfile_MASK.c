#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int dd_fd; scalar_t__ dd_loc; } ;
typedef  TYPE_1__ RST_DIR ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static RST_DIR *
FUNC3(const char *name)
{
	RST_DIR *dirp;
	int fd;

	if ((fd = FUNC2(name, O_RDONLY)) == -1)
		return (NULL);
	if ((dirp = FUNC1(sizeof(RST_DIR))) == NULL) {
		(void)FUNC0(fd);
		return (NULL);
	}
	dirp->dd_fd = fd;
	dirp->dd_loc = 0;
	return (dirp);
}