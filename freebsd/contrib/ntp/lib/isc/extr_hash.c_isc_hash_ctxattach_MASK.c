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
struct TYPE_5__ {int /*<<< orphan*/  refcnt; } ;
typedef  TYPE_1__ isc_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC3(isc_hash_t *hctx, isc_hash_t **hctxp) {
	FUNC0(FUNC1(hctx));
	FUNC0(hctxp != NULL && *hctxp == NULL);

	FUNC2(&hctx->refcnt, NULL);
	*hctxp = hctx;
}