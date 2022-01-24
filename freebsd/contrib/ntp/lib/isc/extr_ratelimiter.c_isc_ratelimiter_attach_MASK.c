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
struct TYPE_4__ {scalar_t__ refs; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ isc_ratelimiter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(isc_ratelimiter_t *source, isc_ratelimiter_t **target) {
	FUNC2(source != NULL);
	FUNC2(target != NULL && *target == NULL);

	FUNC1(&source->lock);
	FUNC2(source->refs > 0);
	source->refs++;
	FUNC0(source->refs > 0);
	FUNC3(&source->lock);
	*target = source;
}