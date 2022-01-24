#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct umac_ctx {scalar_t__ free_ptr; } ;

/* Variables and functions */
 scalar_t__ ALLOC_BOUNDARY ; 
 int /*<<< orphan*/  FUNC0 (struct umac_ctx*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct umac_ctx*) ; 

int FUNC2(struct umac_ctx *ctx)
/* Deallocate the ctx structure */
{
    if (ctx) {
        if (ALLOC_BOUNDARY)
            ctx = (struct umac_ctx *)ctx->free_ptr;
        FUNC0(ctx, sizeof(*ctx) + ALLOC_BOUNDARY);
        FUNC1(ctx);
    }
    return (1);
}