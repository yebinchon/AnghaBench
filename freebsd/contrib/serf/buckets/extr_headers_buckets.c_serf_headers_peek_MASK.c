#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* data; } ;
typedef  TYPE_1__ serf_bucket_t ;
struct TYPE_6__ {scalar_t__ state; } ;
typedef  TYPE_2__ headers_context_t ;
typedef  int /*<<< orphan*/  apr_status_t ;
typedef  int /*<<< orphan*/  apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_EOF ; 
 int /*<<< orphan*/  APR_SUCCESS ; 
 scalar_t__ READ_DONE ; 
 scalar_t__ READ_TERM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char const**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static apr_status_t FUNC1(serf_bucket_t *bucket,
                                      const char **data,
                                      apr_size_t *len)
{
    headers_context_t *ctx = bucket->data;

    FUNC0(ctx, data, len);

    /* already done or returning the CRLF terminator? return EOF */
    if (ctx->state == READ_DONE || ctx->state == READ_TERM)
        return APR_EOF;

    return APR_SUCCESS;
}