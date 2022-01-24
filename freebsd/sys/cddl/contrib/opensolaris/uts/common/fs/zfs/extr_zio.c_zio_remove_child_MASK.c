#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  io_lock; int /*<<< orphan*/  io_parent_count; int /*<<< orphan*/  io_child_count; int /*<<< orphan*/  io_parent_list; int /*<<< orphan*/  io_child_list; } ;
typedef  TYPE_1__ zio_t ;
struct TYPE_9__ {TYPE_1__* zl_child; TYPE_1__* zl_parent; } ;
typedef  TYPE_2__ zio_link_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zio_link_cache ; 

__attribute__((used)) static void
FUNC5(zio_t *pio, zio_t *cio, zio_link_t *zl)
{
	FUNC0(zl->zl_parent == pio);
	FUNC0(zl->zl_child == cio);

	FUNC3(&pio->io_lock);
	FUNC3(&cio->io_lock);

	FUNC2(&pio->io_child_list, zl);
	FUNC2(&cio->io_parent_list, zl);

	pio->io_child_count--;
	cio->io_parent_count--;

	FUNC4(&cio->io_lock);
	FUNC4(&pio->io_lock);
	FUNC1(zio_link_cache, zl);
}