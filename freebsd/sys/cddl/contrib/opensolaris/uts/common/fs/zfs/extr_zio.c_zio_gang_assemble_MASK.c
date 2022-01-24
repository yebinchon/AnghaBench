#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ io_child_type; int /*<<< orphan*/  io_gang_tree; struct TYPE_5__* io_gang_leader; int /*<<< orphan*/ * io_bp; } ;
typedef  TYPE_1__ zio_t ;
typedef  int /*<<< orphan*/  blkptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ ZIO_CHILD_GANG ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static zio_t *
FUNC3(zio_t *zio)
{
	blkptr_t *bp = zio->io_bp;

	FUNC0(FUNC1(bp) && zio->io_gang_leader == NULL);
	FUNC0(zio->io_child_type > ZIO_CHILD_GANG);

	zio->io_gang_leader = zio;

	FUNC2(zio, bp, &zio->io_gang_tree);

	return (zio);
}