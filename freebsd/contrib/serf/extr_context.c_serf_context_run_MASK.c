#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  pollset; } ;
typedef  TYPE_1__ serf_pollset_t ;
typedef  int /*<<< orphan*/  serf_io_baton_t ;
struct TYPE_10__ {scalar_t__ pollset_baton; } ;
typedef  TYPE_2__ serf_context_t ;
typedef  int /*<<< orphan*/  apr_status_t ;
typedef  int /*<<< orphan*/  apr_short_interval_time_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_11__ {int /*<<< orphan*/ * client_data; } ;
typedef  TYPE_3__ apr_pollfd_t ;
typedef  int /*<<< orphan*/  apr_int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  APR_SUCCESS ; 
 int /*<<< orphan*/  APR_TIMEUP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__ const**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_3__ const*) ; 

apr_status_t FUNC5(
    serf_context_t *ctx,
    apr_short_interval_time_t duration,
    apr_pool_t *pool)
{
    apr_status_t status;
    apr_int32_t num;
    const apr_pollfd_t *desc;
    serf_pollset_t *ps = (serf_pollset_t*)ctx->pollset_baton;

    if ((status = FUNC3(ctx)) != APR_SUCCESS) {
        return status;
    }

    if ((status = FUNC2(ps->pollset, duration, &num,
                                   &desc)) != APR_SUCCESS) {
        /* EINTR indicates a handled signal happened during the poll call,
           ignore, the application can safely retry. */
        if (FUNC0(status))
            return APR_SUCCESS;

        /* ### do we still need to dispatch stuff here?
           ### look at the potential return codes. map to our defined
           ### return values? ...
        */

        /* Use the strict documented error for poll timeouts, to allow proper
           handling of the other timeout types when returned from
           serf_event_trigger */
        if (FUNC1(status))
            return APR_TIMEUP; /* Return the documented error */
        return status;
    }

    while (num--) {
        serf_io_baton_t *io  = desc->client_data;

        status = FUNC4(ctx, io, desc);
        if (status) {
            return status;
        }

        desc++;
    }

    return APR_SUCCESS;
}