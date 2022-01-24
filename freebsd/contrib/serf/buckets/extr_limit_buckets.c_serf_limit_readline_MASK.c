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
struct TYPE_4__ {TYPE_2__* data; } ;
typedef  TYPE_1__ serf_bucket_t ;
struct TYPE_5__ {scalar_t__ remaining; int /*<<< orphan*/  stream; } ;
typedef  TYPE_2__ limit_context_t ;
typedef  scalar_t__ apr_status_t ;
typedef  scalar_t__ apr_size_t ;

/* Variables and functions */
 scalar_t__ APR_EOF ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int*,char const**,scalar_t__*) ; 

__attribute__((used)) static apr_status_t FUNC2(serf_bucket_t *bucket,
                                         int acceptable, int *found,
                                         const char **data, apr_size_t *len)
{
    limit_context_t *ctx = bucket->data;
    apr_status_t status;

    if (!ctx->remaining) {
        *len = 0;
        return APR_EOF;
    }

    status = FUNC1(ctx->stream, acceptable, found, data, len);

    if (!FUNC0(status)) {
        ctx->remaining -= *len;
    }

    /* If we have met our limit and don't have a status, return EOF. */
    if (!ctx->remaining && !status) {
        status = APR_EOF;
    }

    return status;
}