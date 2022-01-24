#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t inuse; size_t max_size; TYPE_1__* stats; } ;
typedef  TYPE_2__ isc__mem_t ;
struct TYPE_4__ {unsigned int gets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static inline void
FUNC2(isc__mem_t *ctx, void *ptr, size_t size) {
	FUNC1(ptr);

	FUNC0(ctx->inuse >= size);
	ctx->inuse -= size;

	if (size > ctx->max_size) {
		FUNC0(ctx->stats[ctx->max_size].gets > 0U);
		ctx->stats[ctx->max_size].gets--;
	} else {
		FUNC0(ctx->stats[size].gets > 0U);
		ctx->stats[size].gets--;
	}
}