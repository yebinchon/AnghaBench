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
struct TYPE_3__ {int /*<<< orphan*/ * z_curr_node; } ;
typedef  TYPE_1__ zfs_acl_t ;
typedef  int /*<<< orphan*/  zfs_acl_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static zfs_acl_node_t *
FUNC1(zfs_acl_t *aclp)
{
	FUNC0(aclp->z_curr_node);
	return (aclp->z_curr_node);
}