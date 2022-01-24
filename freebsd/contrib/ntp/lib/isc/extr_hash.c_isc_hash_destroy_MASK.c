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
struct TYPE_4__ {int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**) ; 
 TYPE_1__* hash ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int*) ; 

void
FUNC4() {
	unsigned int refs;

	FUNC0(hash != NULL && FUNC1(hash));

	FUNC3(&hash->refcnt, &refs);
	FUNC0(refs == 0);

	FUNC2(&hash);
}