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
struct TYPE_4__ {char const* method; char const* uri; int /*<<< orphan*/  len; int /*<<< orphan*/ * body; int /*<<< orphan*/  headers; } ;
typedef  TYPE_1__ request_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  LENGTH_UNKNOWN ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  serf_bucket_type_request ; 

serf_bucket_t *FUNC3(
    const char *method,
    const char *URI,
    serf_bucket_t *body,
    serf_bucket_alloc_t *allocator)
{
    request_context_t *ctx;

    ctx = FUNC2(allocator, sizeof(*ctx));
    ctx->method = method;
    ctx->uri = URI;
    ctx->headers = FUNC1(allocator);
    ctx->body = body;
    ctx->len = LENGTH_UNKNOWN;

    return FUNC0(&serf_bucket_type_request, allocator, ctx);
}