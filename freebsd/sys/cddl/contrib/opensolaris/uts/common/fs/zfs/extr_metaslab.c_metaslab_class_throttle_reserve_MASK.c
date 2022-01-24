#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  io_flags; } ;
typedef  TYPE_1__ zio_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_7__ {scalar_t__* mc_alloc_max_slots; int /*<<< orphan*/  mc_lock; int /*<<< orphan*/ * mc_alloc_slots; int /*<<< orphan*/  mc_alloc_throttle_enabled; } ;
typedef  TYPE_2__ metaslab_class_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  ZIO_FLAG_IO_ALLOCATING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

boolean_t
FUNC6(metaslab_class_t *mc, int slots, int allocator,
    zio_t *zio, int flags)
{
	uint64_t available_slots = 0;
	boolean_t slot_reserved = B_FALSE;
	uint64_t max = mc->mc_alloc_max_slots[allocator];

	FUNC0(mc->mc_alloc_throttle_enabled);
	FUNC2(&mc->mc_lock);

	uint64_t reserved_slots =
	    FUNC5(&mc->mc_alloc_slots[allocator]);
	if (reserved_slots < max)
		available_slots = max - reserved_slots;

	if (slots <= available_slots || FUNC1(flags)) {
		/*
		 * We reserve the slots individually so that we can unreserve
		 * them individually when an I/O completes.
		 */
		for (int d = 0; d < slots; d++) {
			reserved_slots =
			    FUNC4(&mc->mc_alloc_slots[allocator],
			    zio);
		}
		zio->io_flags |= ZIO_FLAG_IO_ALLOCATING;
		slot_reserved = B_TRUE;
	}

	FUNC3(&mc->mc_lock);
	return (slot_reserved);
}