#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_repos__dumpfile_headers_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_NODE_ACTION ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_NODE_PATH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC4(svn_stream_t *stream,
                 const char *node_relpath,
                 apr_pool_t *pool)
{
  svn_repos__dumpfile_headers_t *headers
    = FUNC3(pool);

  /* Node-path: ... */
  FUNC2(
    headers, SVN_REPOS_DUMPFILE_NODE_PATH, node_relpath);

  /* Node-action: delete */
  FUNC2(
    headers, SVN_REPOS_DUMPFILE_NODE_ACTION, "delete");

  FUNC0(FUNC1(stream, headers, pool));
  return SVN_NO_ERROR;
}