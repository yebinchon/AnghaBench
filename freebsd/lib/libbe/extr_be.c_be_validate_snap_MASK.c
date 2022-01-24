#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  lzh; } ;
typedef  TYPE_1__ libbe_handle_t ;

/* Variables and functions */
 int BE_ERR_INVALIDNAME ; 
 int BE_ERR_NOENT ; 
 int BE_ERR_PATHLEN ; 
 int BE_ERR_SUCCESS ; 
 scalar_t__ BE_MAXPATHLEN ; 
 int /*<<< orphan*/  ZFS_TYPE_SNAPSHOT ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 

int
FUNC3(libbe_handle_t *lbh, const char *snap_name)
{

	if (FUNC0(snap_name) >= BE_MAXPATHLEN)
		return (BE_ERR_PATHLEN);

	if (!FUNC2(snap_name, ZFS_TYPE_SNAPSHOT))
		return (BE_ERR_INVALIDNAME);

	if (!FUNC1(lbh->lzh, snap_name,
	    ZFS_TYPE_SNAPSHOT))
		return (BE_ERR_NOENT);

	return (BE_ERR_SUCCESS);
}