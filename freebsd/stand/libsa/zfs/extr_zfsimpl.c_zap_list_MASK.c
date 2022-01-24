#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_6__ {int dn_datablkszsec; } ;
typedef  TYPE_1__ dnode_phys_t ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ ZBT_MICRO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,TYPE_1__ const*,int /*<<< orphan*/ ,scalar_t__,size_t) ; 
 int FUNC1 (int /*<<< orphan*/  const*,TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 scalar_t__ zap_scratch ; 
 int /*<<< orphan*/  zfs_printf ; 

__attribute__((used)) static int
FUNC3(const spa_t *spa, const dnode_phys_t *dnode)
{
	uint64_t zap_type;
	size_t size = dnode->dn_datablkszsec * 512;

	if (FUNC0(spa, dnode, 0, zap_scratch, size))
		return (EIO);

	zap_type = *(uint64_t *) zap_scratch;
	if (zap_type == ZBT_MICRO)
		return FUNC2(dnode, zfs_printf);
	else
		return FUNC1(spa, dnode, zfs_printf);
}