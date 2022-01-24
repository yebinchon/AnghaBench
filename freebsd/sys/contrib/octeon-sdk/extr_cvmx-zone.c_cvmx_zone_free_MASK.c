#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* cvmx_zone_t ;
struct TYPE_3__ {unsigned long num_elem; unsigned long elem_size; int /*<<< orphan*/  lock; void* freelist; int /*<<< orphan*/ * baseptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(cvmx_zone_t zone, void *ptr)
{

    FUNC0(zone != NULL);
    FUNC0(zone->baseptr != NULL);
    FUNC0((unsigned long)ptr - (unsigned long)zone->baseptr < zone->num_elem * zone->elem_size);

    FUNC1(&zone->lock);
	*(void **)ptr = zone->freelist;
	zone->freelist = ptr;
    FUNC2(&zone->lock);
}