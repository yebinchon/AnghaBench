#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ consume; scalar_t__ clearto; scalar_t__ top; scalar_t__ bottom; scalar_t__ supply; scalar_t__ consumetime; scalar_t__ mark; } ;
typedef  TYPE_1__ Ring ;

/* Variables and functions */
 scalar_t__ ring_clock ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,scalar_t__,int) ; 
 int FUNC2 (TYPE_1__*,scalar_t__,scalar_t__) ; 

void
FUNC3(Ring *ring, int count)
{
    if (count == 0)	/* don't update anything */
	return;

    if (ring->mark &&
		(FUNC2(ring, ring->mark, ring->consume) < count)) {
	ring->mark = 0;
    }
#ifdef	ENCRYPTION
    if (ring->consume < ring->clearto &&
		ring->clearto <= ring->consume + count)
	ring->clearto = 0;
    else if (ring->consume + count > ring->top &&
		ring->bottom <= ring->clearto &&
		ring->bottom + ((ring->consume + count) - ring->top))
	ring->clearto = 0;
#endif	/* ENCRYPTION */
    ring->consume = FUNC1(ring, ring->consume, count);
    ring->consumetime = ++ring_clock;
    /*
     * Try to encourage "ring_empty_consecutive()" to be large.
     */
    if (FUNC0(ring)) {
	ring->consume = ring->supply = ring->bottom;
    }
}