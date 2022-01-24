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
struct TYPE_4__ {char const* original; char const* current; int /*<<< orphan*/ * baton; int /*<<< orphan*/  freefunc; int /*<<< orphan*/  remaining; } ;
typedef  TYPE_1__ simple_context_t ;
typedef  int /*<<< orphan*/  serf_bucket_t ;
typedef  int /*<<< orphan*/  serf_bucket_alloc_t ;
typedef  int /*<<< orphan*/  apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  free_copied_data ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  serf_bucket_type_simple ; 

serf_bucket_t *FUNC2(
    const char *data, apr_size_t len,
    serf_bucket_alloc_t *allocator)
{
    simple_context_t *ctx;

    ctx = FUNC1(allocator, sizeof(*ctx));

    ctx->original = ctx->current = data;

    ctx->remaining = len;
    ctx->freefunc = free_copied_data;
    ctx->baton = allocator;

    return FUNC0(&serf_bucket_type_simple, allocator, ctx);
}