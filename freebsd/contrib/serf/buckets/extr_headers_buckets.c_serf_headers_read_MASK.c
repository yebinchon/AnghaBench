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
struct TYPE_7__ {scalar_t__ state; int /*<<< orphan*/  amt_read; } ;
typedef  TYPE_2__ headers_context_t ;
typedef  int /*<<< orphan*/  apr_status_t ;
typedef  scalar_t__ apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_EOF ; 
 int /*<<< orphan*/  APR_SUCCESS ; 
 scalar_t__ READ_DONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char const**,scalar_t__*) ; 

__attribute__((used)) static apr_status_t FUNC2(serf_bucket_t *bucket,
                                      apr_size_t requested,
                                      const char **data, apr_size_t *len)
{
    headers_context_t *ctx = bucket->data;
    apr_size_t avail;

    FUNC1(ctx, data, &avail);
    if (ctx->state == READ_DONE) {
        *len = avail;
        return APR_EOF;
    }

    if (requested >= avail) {
        /* return everything from this chunk */
        *len = avail;

        /* we consumed this chunk. advance the state. */
        return FUNC0(ctx);
    }

    /* return just the amount requested, and advance our pointer */
    *len = requested;
    ctx->amt_read += requested;

    /* there is more that can be read immediately */
    return APR_SUCCESS;
}