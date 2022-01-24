#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ io_offset; scalar_t__ io_size; } ;
typedef  TYPE_1__ zio_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_8__ {int /*<<< orphan*/  tm_inflight_writes; int /*<<< orphan*/  tm_lock; } ;
typedef  TYPE_2__ trim_map_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(trim_map_t *tm, uint64_t start, uint64_t end, uint64_t txg)
{
	zio_t zsearch, *zs;

	FUNC0(FUNC1(&tm->tm_lock));

	zsearch.io_offset = start;
	zsearch.io_size = end - start;

	zs = FUNC2(&tm->tm_inflight_writes, &zsearch, NULL);
	if (zs == NULL) {
		FUNC3(tm, start, end, txg);
		return;
	}
	if (start < zs->io_offset)
		FUNC4(tm, start, zs->io_offset, txg);
	if (zs->io_offset + zs->io_size < end)
		FUNC4(tm, zs->io_offset + zs->io_size, end, txg);
}