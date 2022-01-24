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
struct TYPE_4__ {char* current; int /*<<< orphan*/  remaining; } ;
typedef  TYPE_1__ simple_context_t ;
struct TYPE_5__ {TYPE_1__* data; } ;
typedef  TYPE_2__ serf_bucket_t ;
typedef  int /*<<< orphan*/  apr_status_t ;
typedef  int /*<<< orphan*/  apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_EOF ; 

__attribute__((used)) static apr_status_t FUNC0(serf_bucket_t *bucket,
                                     const char **data,
                                     apr_size_t *len)
{
    simple_context_t *ctx = bucket->data;

    /* return whatever we have left */
    *data = ctx->current;
    *len = ctx->remaining;

    /* we returned everything this bucket will ever hold */
    return APR_EOF;
}