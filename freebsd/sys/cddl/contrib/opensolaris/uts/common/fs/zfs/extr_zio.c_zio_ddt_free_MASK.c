#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ io_child_type; int /*<<< orphan*/ * io_bp; int /*<<< orphan*/ * io_spa; } ;
typedef  TYPE_1__ zio_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  ddt_t ;
typedef  int /*<<< orphan*/  ddt_phys_t ;
typedef  int /*<<< orphan*/  ddt_entry_t ;
typedef  int /*<<< orphan*/  blkptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  B_TRUE ; 
 scalar_t__ ZIO_CHILD_LOGICAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * freedde ; 

__attribute__((used)) static zio_t *
FUNC8(zio_t *zio)
{
	spa_t *spa = zio->io_spa;
	blkptr_t *bp = zio->io_bp;
	ddt_t *ddt = FUNC7(spa, bp);
	ddt_entry_t *dde;
	ddt_phys_t *ddp;

	FUNC0(FUNC1(bp));
	FUNC0(zio->io_child_type == ZIO_CHILD_LOGICAL);

	FUNC2(ddt);
	freedde = dde = FUNC4(ddt, bp, B_TRUE);
	ddp = FUNC6(dde, bp);
	FUNC5(ddp);
	FUNC3(ddt);

	return (zio);
}