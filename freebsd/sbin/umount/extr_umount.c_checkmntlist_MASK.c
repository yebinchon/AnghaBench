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
struct statfs {int dummy; } ;
typedef  int /*<<< orphan*/  fsid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FIND ; 
 struct statfs* FUNC0 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *) ; 

struct statfs *
FUNC2(char *mntname)
{
	struct statfs *sfs;
	fsid_t fsid;

	sfs = NULL;
	if (FUNC1(mntname, &fsid) == 0)
		sfs = FUNC0(NULL, NULL, &fsid, FIND);
	if (sfs == NULL)
		sfs = FUNC0(NULL, mntname, NULL, FIND);
	if (sfs == NULL)
		sfs = FUNC0(mntname, NULL, NULL, FIND);
	return (sfs);
}