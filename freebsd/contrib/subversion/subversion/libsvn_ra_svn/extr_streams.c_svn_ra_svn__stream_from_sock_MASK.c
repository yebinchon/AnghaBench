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
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_ra_svn__stream_t ;
struct TYPE_5__ {int /*<<< orphan*/  pool; int /*<<< orphan*/ * sock; } ;
typedef  TYPE_1__ sock_baton_t ;
typedef  int /*<<< orphan*/  apr_socket_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  sock_pending_cb ; 
 int /*<<< orphan*/  sock_read_cb ; 
 int /*<<< orphan*/  sock_timeout_cb ; 
 int /*<<< orphan*/  sock_write_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

svn_ra_svn__stream_t *
FUNC7(apr_socket_t *sock,
                             apr_pool_t *result_pool)
{
  sock_baton_t *b = FUNC0(result_pool, sizeof(*b));
  svn_stream_t *sock_stream;

  b->sock = sock;
  b->pool = FUNC1(result_pool);

  sock_stream = FUNC3(b, result_pool);

  FUNC5(sock_stream, sock_read_cb, NULL /* use default */);
  FUNC6(sock_stream, sock_write_cb);
  FUNC4(sock_stream, sock_pending_cb);

  return FUNC2(sock_stream, sock_stream,
                                   b, sock_timeout_cb, result_pool);
}