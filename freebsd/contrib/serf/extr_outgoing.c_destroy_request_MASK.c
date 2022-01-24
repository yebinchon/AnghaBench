#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ respool; int /*<<< orphan*/  allocator; TYPE_4__* req_bkt; TYPE_4__* resp_bkt; TYPE_2__* conn; } ;
typedef  TYPE_1__ serf_request_t ;
struct TYPE_7__ {int /*<<< orphan*/  allocator; } ;
typedef  TYPE_2__ serf_connection_t ;
typedef  int /*<<< orphan*/  apr_status_t ;
struct TYPE_8__ {int /*<<< orphan*/  allocator; } ;

/* Variables and functions */
 int /*<<< orphan*/  APR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static apr_status_t FUNC5(serf_request_t *request)
{
    serf_connection_t *conn = request->conn;

    /* The request and response buckets are no longer needed,
       nor is the request's pool.  */
    if (request->resp_bkt) {
        FUNC4(request->resp_bkt->allocator);
        FUNC1(request->resp_bkt);
        request->resp_bkt = NULL;
    }
    if (request->req_bkt) {
        FUNC4(request->req_bkt->allocator);
        FUNC1(request->req_bkt);
        request->req_bkt = NULL;
    }

    FUNC3(request->allocator);
    if (request->respool) {
        /* ### unregister the pool cleanup for self?  */
        FUNC0(request->respool);
    }

    FUNC2(conn->allocator, request);

    return APR_SUCCESS;
}