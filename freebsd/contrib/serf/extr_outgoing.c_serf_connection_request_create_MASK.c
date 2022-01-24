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
typedef  int /*<<< orphan*/  serf_request_t ;
typedef  int /*<<< orphan*/  serf_request_setup_t ;
struct TYPE_6__ {int dirty_conn; TYPE_1__* ctx; int /*<<< orphan*/  requests_tail; int /*<<< orphan*/  requests; } ;
typedef  TYPE_2__ serf_connection_t ;
struct TYPE_5__ {int dirty_pollset; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

serf_request_t *FUNC2(
    serf_connection_t *conn,
    serf_request_setup_t setup,
    void *setup_baton)
{
    serf_request_t *request;

    request = FUNC0(conn, setup, setup_baton,
                             0, /* priority */
                             0  /* ssl tunnel */);

    /* Link the request to the end of the request chain. */
    FUNC1(&conn->requests, &conn->requests_tail, request);
    
    /* Ensure our pollset becomes writable in context run */
    conn->ctx->dirty_pollset = 1;
    conn->dirty_conn = 1;

    return request;
}