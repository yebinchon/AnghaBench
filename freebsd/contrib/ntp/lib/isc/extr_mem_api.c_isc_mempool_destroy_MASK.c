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
struct TYPE_7__ {TYPE_1__* methods; } ;
typedef  TYPE_2__ isc_mempool_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* destroy ) (TYPE_2__**) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**) ; 

void
FUNC4(isc_mempool_t **mpctxp) {
	FUNC2(mpctxp != NULL && FUNC1(*mpctxp));

	(*mpctxp)->methods->destroy(mpctxp);

	FUNC0(*mpctxp == NULL);
}