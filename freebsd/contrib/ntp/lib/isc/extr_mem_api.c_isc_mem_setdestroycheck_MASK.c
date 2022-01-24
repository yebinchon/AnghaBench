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
typedef  TYPE_2__ isc_mem_t ;
typedef  int /*<<< orphan*/  isc_boolean_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* setdestroycheck ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void
FUNC3(isc_mem_t *mctx, isc_boolean_t flag) {
	FUNC1(FUNC0(mctx));

	mctx->methods->setdestroycheck(mctx, flag);
}