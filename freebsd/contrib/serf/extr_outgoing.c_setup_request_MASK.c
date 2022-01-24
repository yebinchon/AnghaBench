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
struct TYPE_6__ {int /*<<< orphan*/  respool; int /*<<< orphan*/  handler_baton; int /*<<< orphan*/  handler; int /*<<< orphan*/  acceptor_baton; int /*<<< orphan*/  acceptor; int /*<<< orphan*/  req_bkt; int /*<<< orphan*/  setup_baton; int /*<<< orphan*/  (* setup ) (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  allocator; TYPE_2__* conn; } ;
typedef  TYPE_1__ serf_request_t ;
struct TYPE_7__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ serf_connection_t ;
typedef  int /*<<< orphan*/  apr_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clean_resp ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static apr_status_t FUNC4(serf_request_t *request)
{
    serf_connection_t *conn = request->conn;
    apr_status_t status;

    /* Now that we are about to serve the request, allocate a pool. */
    FUNC1(&request->respool, conn->pool);
    request->allocator = FUNC2(request->respool,
                                                      NULL, NULL);
    FUNC0(request->respool, request,
                              clean_resp, clean_resp);

    /* Fill in the rest of the values for the request. */
    status = request->setup(request, request->setup_baton,
                            &request->req_bkt,
                            &request->acceptor,
                            &request->acceptor_baton,
                            &request->handler,
                            &request->handler_baton,
                            request->respool);
    return status;
}