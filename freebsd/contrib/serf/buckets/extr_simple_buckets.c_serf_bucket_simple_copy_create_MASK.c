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
struct TYPE_3__ {int remaining; int /*<<< orphan*/ * baton; int /*<<< orphan*/  freefunc; void* original; void* current; } ;
typedef  TYPE_1__ simple_context_t ;
typedef  int /*<<< orphan*/  serf_bucket_t ;
typedef  int /*<<< orphan*/  serf_bucket_alloc_t ;
typedef  int apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  free_copied_data ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  serf_bucket_type_simple ; 

serf_bucket_t *FUNC3(
    const char *data, apr_size_t len,
    serf_bucket_alloc_t *allocator)
{
    simple_context_t *ctx;

    ctx = FUNC2(allocator, sizeof(*ctx));

    ctx->original = ctx->current = FUNC2(allocator, len);
    FUNC0((char*)ctx->original, data, len);

    ctx->remaining = len;
    ctx->freefunc = free_copied_data;
    ctx->baton = allocator;

    return FUNC1(&serf_bucket_type_simple, allocator, ctx);
}