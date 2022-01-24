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
typedef  int /*<<< orphan*/  fullname ;

/* Variables and functions */
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int
FUNC2(const char *fsname, void *arg)
{
	const char *snapname = arg;
	char fullname[ZFS_MAX_DATASET_NAME_LEN];

	(void) FUNC0(fullname, sizeof (fullname), "%s@%s", fsname, snapname);
	FUNC1(fullname);

	return (0);
}