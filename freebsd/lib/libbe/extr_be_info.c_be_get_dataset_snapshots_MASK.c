#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_handle_t ;
struct TYPE_5__ {int single_object; int /*<<< orphan*/ * list; TYPE_2__* lbh; } ;
typedef  TYPE_1__ prop_data_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_6__ {int /*<<< orphan*/  lzh; } ;
typedef  TYPE_2__ libbe_handle_t ;

/* Variables and functions */
 int BE_ERR_ZFSOPEN ; 
 int /*<<< orphan*/  ZFS_TYPE_FILESYSTEM ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

int
FUNC3(libbe_handle_t *lbh, const char *name, nvlist_t *props)
{
	zfs_handle_t *ds_hdl;
	prop_data_t data;
	int ret;

	data.lbh = lbh;
	data.list = props;
	data.single_object = false;
	if ((ds_hdl = FUNC2(lbh->lzh, name,
	    ZFS_TYPE_FILESYSTEM)) == NULL)
		return (BE_ERR_ZFSOPEN);

	ret = FUNC0(ds_hdl, &data);
	FUNC1(ds_hdl);
	return (ret);
}