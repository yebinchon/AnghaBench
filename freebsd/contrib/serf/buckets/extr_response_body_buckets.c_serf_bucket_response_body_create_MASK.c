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
typedef  int /*<<< orphan*/  serf_bucket_t ;
typedef  int /*<<< orphan*/  serf_bucket_alloc_t ;
struct TYPE_4__ {int /*<<< orphan*/  remaining; int /*<<< orphan*/ * stream; } ;
typedef  TYPE_1__ body_context_t ;
typedef  int /*<<< orphan*/  apr_uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  serf_bucket_type_response_body ; 

serf_bucket_t *FUNC2(
    serf_bucket_t *stream, apr_uint64_t len, serf_bucket_alloc_t *allocator)
{
    body_context_t *ctx;

    ctx = FUNC1(allocator, sizeof(*ctx));
    ctx->stream = stream;
    ctx->remaining = len;

    return FUNC0(&serf_bucket_type_response_body, allocator, ctx);
}