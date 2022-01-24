#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_txdelta_window_handler_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_2__ {int /*<<< orphan*/  conn; int /*<<< orphan*/ * pool; } ;
typedef  TYPE_1__ file_revs_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svndiff_close_handler ; 
 int /*<<< orphan*/  svndiff_handler ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *FUNC11(void *baton, const char *path,
                                     svn_revnum_t rev, apr_hash_t *rev_props,
                                     svn_boolean_t merged_revision,
                                     svn_txdelta_window_handler_t *d_handler,
                                     void **d_baton,
                                     apr_array_header_t *prop_diffs,
                                     apr_pool_t *pool)
{
  file_revs_baton_t *frb = baton;
  svn_stream_t *stream;

  FUNC0(FUNC4(frb->conn, pool, "cr(!",
                                  path, rev));
  FUNC0(FUNC3(frb->conn, pool, rev_props));
  FUNC0(FUNC4(frb->conn, pool, "!)(!"));
  FUNC0(FUNC10(frb->conn, pool, prop_diffs));
  FUNC0(FUNC4(frb->conn, pool, "!)b", merged_revision));

  /* Store the pool for the delta stream. */
  frb->pool = pool;

  /* Prepare for the delta or just write an empty string. */
  if (d_handler)
    {
      stream = FUNC6(baton, pool);
      FUNC8(stream, svndiff_handler);
      FUNC7(stream, svndiff_close_handler);

      FUNC9(d_handler, d_baton, stream,
                              FUNC1(frb->conn),
                              FUNC5(frb->conn), pool);
    }
  else
    FUNC0(FUNC2(frb->conn, pool, ""));

  return SVN_NO_ERROR;
}