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
struct TYPE_5__ {scalar_t__ consume; scalar_t__ supply; scalar_t__ top; } ;
typedef  TYPE_1__ Ring ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,scalar_t__,scalar_t__) ; 

int
FUNC2(Ring *ring)
{
    if ((ring->consume < ring->supply) || FUNC0(ring)) {
			    /*
			     * if consume is "below" supply, or empty, then
			     * return distance to the top
			     */
	return FUNC1(ring, ring->top, ring->supply);
    } else {
				    /*
				     * else, return what we may.
				     */
	return FUNC1(ring, ring->consume, ring->supply);
    }
}