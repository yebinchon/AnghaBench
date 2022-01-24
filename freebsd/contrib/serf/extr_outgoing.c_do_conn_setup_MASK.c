#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * ostream_head; int /*<<< orphan*/ * ostream_tail; int /*<<< orphan*/  pool; int /*<<< orphan*/  setup_baton; int /*<<< orphan*/  stream; int /*<<< orphan*/  skt; scalar_t__ (* setup ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  allocator; } ;
typedef  TYPE_1__ serf_connection_t ;
typedef  int /*<<< orphan*/  serf_bucket_t ;
typedef  scalar_t__ apr_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  detect_eof ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static apr_status_t FUNC6(serf_connection_t *conn)
{
    apr_status_t status;
    serf_bucket_t *ostream;

    if (conn->ostream_head == NULL) {
        conn->ostream_head = FUNC3(conn->allocator);
    }

    if (conn->ostream_tail == NULL) {
        conn->ostream_tail = FUNC1(conn->allocator,
                                                        detect_eof,
                                                        conn);
    }

    ostream = conn->ostream_tail;

    status = (*conn->setup)(conn->skt,
                            &conn->stream,
                            &ostream,
                            conn->setup_baton,
                            conn->pool);
    if (status) {
        /* extra destroy here since it wasn't added to the head bucket yet. */
        FUNC4(conn->ostream_tail);
        FUNC0(conn);
        return status;
    }

    FUNC2(conn->ostream_head,
                                 ostream);

    return status;
}