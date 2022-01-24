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
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_repos__dumpfile_headers_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_PROP_DELTA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(svn_repos__dumpfile_headers_t *headers,
                  svn_stringbuf_t **content,
                  apr_hash_t *props,
                  apr_hash_t *deleted_props,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  svn_stream_t *content_stream;
  apr_hash_t *normal_props;

  *content = FUNC6(result_pool);

  content_stream = FUNC5(*content, scratch_pool);

  FUNC0(FUNC2(&normal_props, props, scratch_pool));
  FUNC0(FUNC1(normal_props, deleted_props,
                                     content_stream, "PROPS-END",
                                     scratch_pool));
  FUNC0(FUNC4(content_stream));

  /* Prop-delta: true */
  FUNC3(
    headers, SVN_REPOS_DUMPFILE_PROP_DELTA, "true");

  return SVN_NO_ERROR;
}