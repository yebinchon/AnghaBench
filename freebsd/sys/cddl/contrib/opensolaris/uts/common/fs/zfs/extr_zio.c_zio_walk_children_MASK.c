#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  io_lock; int /*<<< orphan*/  io_child_list; } ;
typedef  TYPE_1__ zio_t ;
struct TYPE_10__ {TYPE_1__* zl_child; TYPE_1__* zl_parent; } ;
typedef  TYPE_2__ zio_link_t ;
typedef  int /*<<< orphan*/  list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 

zio_t *
FUNC4(zio_t *pio, zio_link_t **zl)
{
	list_t *cl = &pio->io_child_list;

	FUNC0(FUNC1(&pio->io_lock));

	*zl = (*zl == NULL) ? FUNC2(cl) : FUNC3(cl, *zl);
	if (*zl == NULL)
		return (NULL);

	FUNC0((*zl)->zl_parent == pio);
	return ((*zl)->zl_child);
}