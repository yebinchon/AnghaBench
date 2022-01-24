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
struct group {char* gr_name; } ;
struct cpio {int dummy; } ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  scalar_t__ id_t ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 struct group* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct cpio *cpio, const char **name, id_t id)
{
	struct group	*grent;

	(void)cpio; /* UNUSED */

	errno = 0;
	grent = FUNC1((gid_t)id);
	if (grent == NULL) {
		if (errno && errno != ENOENT)
			FUNC2(errno, "getgrgid(%s) failed",
			    FUNC0((int64_t)id));
		return 1;
	}

	*name = grent->gr_name;
	return 0;
}