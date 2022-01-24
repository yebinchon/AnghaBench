#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int z_id; TYPE_1__* z_zfsvfs; } ;
typedef  TYPE_2__ znode_t ;
typedef  int uint64_t ;
struct TYPE_4__ {scalar_t__ z_version; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ ZPL_VERSION_DIRENT_TYPE ; 

__attribute__((used)) static uint64_t
FUNC1(znode_t *zp, uint64_t mode)
{
	uint64_t de = zp->z_id;

	if (zp->z_zfsvfs->z_version >= ZPL_VERSION_DIRENT_TYPE)
		de |= FUNC0(mode) << 60;
	return (de);
}