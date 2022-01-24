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
typedef  int /*<<< orphan*/  isc_mem_water_t ;
struct TYPE_7__ {TYPE_1__* methods; } ;
typedef  TYPE_2__ isc_mem_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* setwater ) (TYPE_2__*,int /*<<< orphan*/ ,void*,size_t,size_t) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,void*,size_t,size_t) ; 

void
FUNC3(isc_mem_t *ctx, isc_mem_water_t water, void *water_arg,
		 size_t hiwater, size_t lowater)
{
	FUNC1(FUNC0(ctx));

	ctx->methods->setwater(ctx, water, water_arg, hiwater, lowater);
}