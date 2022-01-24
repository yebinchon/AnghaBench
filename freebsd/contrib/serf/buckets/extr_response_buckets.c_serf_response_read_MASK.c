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
struct TYPE_6__ {TYPE_2__* data; } ;
typedef  TYPE_1__ serf_bucket_t ;
struct TYPE_7__ {int /*<<< orphan*/  state; scalar_t__ chunked; int /*<<< orphan*/  body; } ;
typedef  TYPE_2__ response_context_t ;
typedef  scalar_t__ apr_status_t ;
typedef  scalar_t__ apr_size_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ APR_SUCCESS ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  STATE_DONE ; 
 int /*<<< orphan*/  STATE_TRAILERS ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,char const**,scalar_t__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static apr_status_t FUNC5(serf_bucket_t *bucket,
                                       apr_size_t requested,
                                       const char **data, apr_size_t *len)
{
    response_context_t *ctx = bucket->data;
    apr_status_t rv;

    rv = FUNC4(bucket, ctx);
    if (rv) {
        /* It's not possible to have read anything yet! */
        if (FUNC1(rv) || FUNC0(rv)) {
            *len = 0;
        }
        return rv;
    }

    rv = FUNC3(ctx->body, requested, data, len);
    if (FUNC2(rv))
        return rv;

    if (FUNC1(rv)) {
        if (ctx->chunked) {
            ctx->state = STATE_TRAILERS;
            /* Mask the result. */
            rv = APR_SUCCESS;
        } else {
            ctx->state = STATE_DONE;
        }
    }
    return rv;
}