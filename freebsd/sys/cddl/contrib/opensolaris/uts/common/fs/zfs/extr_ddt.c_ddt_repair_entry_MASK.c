#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  io_spa; int /*<<< orphan*/  io_flags; } ;
typedef  TYPE_1__ zio_t ;
struct TYPE_18__ {int /*<<< orphan*/  ddt_checksum; } ;
typedef  TYPE_2__ ddt_t ;
struct TYPE_19__ {scalar_t__ ddp_phys_birth; int /*<<< orphan*/  ddp_dva; } ;
typedef  TYPE_3__ ddt_phys_t ;
typedef  int /*<<< orphan*/  ddt_key_t ;
struct TYPE_20__ {int /*<<< orphan*/  dde_repair_abd; int /*<<< orphan*/  dde_key; TYPE_3__* dde_phys; } ;
typedef  TYPE_4__ ddt_entry_t ;
typedef  int /*<<< orphan*/  blkptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int DDT_PHYS_TYPES ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  ZIO_PRIORITY_SYNC_WRITE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ddt_repair_entry_done ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(ddt_t *ddt, ddt_entry_t *dde, ddt_entry_t *rdde, zio_t *rio)
{
	ddt_phys_t *ddp = dde->dde_phys;
	ddt_phys_t *rddp = rdde->dde_phys;
	ddt_key_t *ddk = &dde->dde_key;
	ddt_key_t *rddk = &rdde->dde_key;
	zio_t *zio;
	blkptr_t blk;

	zio = FUNC5(rio, rio->io_spa, NULL,
	    ddt_repair_entry_done, rdde, rio->io_flags);

	for (int p = 0; p < DDT_PHYS_TYPES; p++, ddp++, rddp++) {
		if (ddp->ddp_phys_birth == 0 ||
		    ddp->ddp_phys_birth != rddp->ddp_phys_birth ||
		    FUNC2(ddp->ddp_dva, rddp->ddp_dva, sizeof (ddp->ddp_dva)))
			continue;
		FUNC3(ddt->ddt_checksum, ddk, ddp, &blk);
		FUNC4(FUNC6(zio, zio->io_spa, 0, &blk,
		    rdde->dde_repair_abd, FUNC0(rddk), NULL, NULL,
		    ZIO_PRIORITY_SYNC_WRITE, FUNC1(zio), NULL));
	}

	FUNC4(zio);
}