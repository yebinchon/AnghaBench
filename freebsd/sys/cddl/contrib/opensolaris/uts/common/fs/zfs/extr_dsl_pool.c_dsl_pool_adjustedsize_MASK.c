#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int zfs_space_check_t ;
typedef  int uint64_t ;
struct TYPE_10__ {TYPE_1__* bpo_phys; } ;
struct TYPE_11__ {TYPE_2__ spa_deferred_bpobj; } ;
typedef  TYPE_3__ spa_t ;
struct TYPE_12__ {TYPE_3__* dp_spa; } ;
typedef  TYPE_4__ dsl_pool_t ;
struct TYPE_9__ {int bpo_bytes; } ;

/* Variables and functions */
#define  ZFS_SPACE_CHECK_EXTRA_RESERVED 131 
#define  ZFS_SPACE_CHECK_NONE 130 
#define  ZFS_SPACE_CHECK_NORMAL 129 
#define  ZFS_SPACE_CHECK_RESERVED 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*) ; 

uint64_t
FUNC4(dsl_pool_t *dp, zfs_space_check_t slop_policy)
{
	spa_t *spa = dp->dp_spa;
	uint64_t space, resv, adjustedsize;
	uint64_t spa_deferred_frees =
	    spa->spa_deferred_bpobj.bpo_phys->bpo_bytes;

	space = FUNC2(spa)
	    - FUNC1(spa) - spa_deferred_frees;
	resv = FUNC3(spa);

	switch (slop_policy) {
	case ZFS_SPACE_CHECK_NORMAL:
		break;
	case ZFS_SPACE_CHECK_RESERVED:
		resv >>= 1;
		break;
	case ZFS_SPACE_CHECK_EXTRA_RESERVED:
		resv >>= 2;
		break;
	case ZFS_SPACE_CHECK_NONE:
		resv = 0;
		break;
	default:
		FUNC0("invalid slop policy value: %d", slop_policy);
		break;
	}
	adjustedsize = (space >= resv) ? (space - resv) : 0;

	return (adjustedsize);
}