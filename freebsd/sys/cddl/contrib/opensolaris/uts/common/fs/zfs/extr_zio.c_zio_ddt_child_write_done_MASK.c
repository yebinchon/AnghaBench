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
struct TYPE_9__ {int zp_copies; } ;
struct TYPE_10__ {scalar_t__ io_error; TYPE_4__* io_private; int /*<<< orphan*/  io_bp; int /*<<< orphan*/  io_spa; TYPE_1__ io_prop; } ;
typedef  TYPE_2__ zio_t ;
typedef  int /*<<< orphan*/  zio_link_t ;
typedef  int /*<<< orphan*/  ddt_t ;
struct TYPE_11__ {scalar_t__ ddp_refcnt; } ;
typedef  TYPE_3__ ddt_phys_t ;
struct TYPE_12__ {TYPE_2__** dde_lead_zio; TYPE_3__* dde_phys; } ;
typedef  TYPE_4__ ddt_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void
FUNC7(zio_t *zio)
{
	int p = zio->io_prop.zp_copies;
	ddt_t *ddt = FUNC5(zio->io_spa, zio->io_bp);
	ddt_entry_t *dde = zio->io_private;
	ddt_phys_t *ddp = &dde->dde_phys[p];

	FUNC1(ddt);

	FUNC0(ddp->ddp_refcnt == 0);
	FUNC0(dde->dde_lead_zio[p] == zio);
	dde->dde_lead_zio[p] = NULL;

	if (zio->io_error == 0) {
		zio_link_t *zl = NULL;
		while (FUNC6(zio, &zl) != NULL)
			FUNC3(ddp);
	} else {
		FUNC4(ddp);
	}

	FUNC2(ddt);
}