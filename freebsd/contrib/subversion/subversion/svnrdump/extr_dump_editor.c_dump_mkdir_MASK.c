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
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_repos__dumpfile_headers_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct dump_edit_baton {int /*<<< orphan*/  stream; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_NODE_ACTION ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_NODE_KIND ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_NODE_PATH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static svn_error_t *
FUNC7(struct dump_edit_baton *eb,
           const char *repos_relpath,
           apr_pool_t *pool)
{
  svn_stringbuf_t *prop_content;
  svn_repos__dumpfile_headers_t *headers
    = FUNC5(pool);

  /* Node-path: ... */
  FUNC4(
    headers, SVN_REPOS_DUMPFILE_NODE_PATH, repos_relpath);

  /* Node-kind: dir */
  FUNC4(
    headers, SVN_REPOS_DUMPFILE_NODE_KIND, "dir");

  /* Node-action: add */
  FUNC4(
    headers, SVN_REPOS_DUMPFILE_NODE_ACTION, "add");

  /* Dump the (empty) property block. */
  FUNC0(FUNC2(headers, &prop_content,
                            FUNC1(pool), FUNC1(pool),
                            pool, pool));
  FUNC0(FUNC3(eb->stream, headers, prop_content,
                                      FALSE, 0, FALSE /*content_length_always*/,
                                      pool));

  /* Newlines to tie it all off. */
  FUNC0(FUNC6(eb->stream, "\n\n"));

  return SVN_NO_ERROR;
}