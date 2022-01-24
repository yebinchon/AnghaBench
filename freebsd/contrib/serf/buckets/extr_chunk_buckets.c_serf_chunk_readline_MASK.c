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
struct TYPE_5__ {scalar_t__ state; int /*<<< orphan*/  chunk; } ;
typedef  TYPE_2__ chunk_context_t ;
typedef  int /*<<< orphan*/  apr_status_t ;
typedef  int /*<<< orphan*/  apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_EAGAIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ STATE_CHUNK ; 
 scalar_t__ STATE_FETCH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int*,char const**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static apr_status_t FUNC2(serf_bucket_t *bucket,
                                         int acceptable, int *found,
                                         const char **data, apr_size_t *len)
{
    chunk_context_t *ctx = bucket->data;
    apr_status_t status;

    status = FUNC1(ctx->chunk, acceptable, found, data, len);

    /* Mask EOF from aggregate bucket. */
    if (FUNC0(status) && ctx->state == STATE_CHUNK) {
        status = APR_EAGAIN;
        ctx->state = STATE_FETCH;
    }

    return status;
}