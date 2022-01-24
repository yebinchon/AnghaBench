#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  io_txg; int /*<<< orphan*/  io_spa; } ;
typedef  TYPE_1__ zio_t ;
typedef  int /*<<< orphan*/  zio_gang_node_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  blkptr_t ;
typedef  int /*<<< orphan*/  abd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SPA_GANGBLOCKSIZE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zio_t *
FUNC4(zio_t *pio, blkptr_t *bp, zio_gang_node_t *gn, abd_t *data,
    uint64_t offset)
{
	return (FUNC3(pio, pio->io_spa, pio->io_txg, bp,
	    FUNC1(bp) ? SPA_GANGBLOCKSIZE : FUNC0(bp),
	    FUNC2(pio)));
}