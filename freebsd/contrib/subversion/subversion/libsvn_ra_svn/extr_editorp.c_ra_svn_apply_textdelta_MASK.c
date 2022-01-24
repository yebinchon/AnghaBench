#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_txdelta_window_handler_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {TYPE_3__* conn; int /*<<< orphan*/  token; int /*<<< orphan*/  eb; } ;
typedef  TYPE_1__ ra_svn_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_6__ {int /*<<< orphan*/  compression_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ra_svn_svndiff_close_handler ; 
 int /*<<< orphan*/  ra_svn_svndiff_handler ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *FUNC8(void *file_baton,
                                           const char *base_checksum,
                                           apr_pool_t *pool,
                                           svn_txdelta_window_handler_t *wh,
                                           void **wh_baton)
{
  ra_svn_baton_t *b = file_baton;
  svn_stream_t *diff_stream;

  /* Tell the other side we're starting a text delta. */
  FUNC0(FUNC1(b->eb, pool));
  FUNC0(FUNC3(b->conn, pool, b->token,
                                                base_checksum));

  /* Transform the window stream to an svndiff stream.  Reuse the
   * file baton for the stream handler, since it has all the
   * needed information. */
  diff_stream = FUNC4(b, pool);
  FUNC6(diff_stream, ra_svn_svndiff_handler);
  FUNC5(diff_stream, ra_svn_svndiff_close_handler);

  FUNC7(wh, wh_baton, diff_stream,
                          FUNC2(b->conn),
                          b->conn->compression_level, pool);
  return SVN_NO_ERROR;
}