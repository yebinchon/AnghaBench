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
struct TYPE_6__ {TYPE_1__* lbh; } ;
typedef  TYPE_2__ prop_data_t ;
struct TYPE_5__ {int /*<<< orphan*/  root; int /*<<< orphan*/  lzh; } ;

/* Variables and functions */
 int BE_ERR_ZFSOPEN ; 
 int /*<<< orphan*/  ZFS_TYPE_FILESYSTEM ; 
 int /*<<< orphan*/  prop_list_builder_cb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(prop_data_t *data)
{
	zfs_handle_t *root_hdl;

	if ((root_hdl = FUNC2(data->lbh->lzh, data->lbh->root,
	    ZFS_TYPE_FILESYSTEM)) == NULL)
		return (BE_ERR_ZFSOPEN);

	/* XXX TODO: some error checking here */
	FUNC1(root_hdl, prop_list_builder_cb, data);

	FUNC0(root_hdl);

	return (0);
}