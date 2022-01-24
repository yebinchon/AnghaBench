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
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
struct text_baton_t {int /*<<< orphan*/ * stream; int /*<<< orphan*/  result_checksum; int /*<<< orphan*/ * pool; int /*<<< orphan*/  path; int /*<<< orphan*/ * root; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct text_baton_t*,int /*<<< orphan*/ *) ; 
 struct text_baton_t* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_stream_t **contents_p,
              svn_fs_root_t *root,
              const char *path,
              svn_checksum_t *result_checksum,
              apr_pool_t *pool)
{
  struct text_baton_t *tb = FUNC2(pool, sizeof(*tb));

  tb->root = root;
  tb->path = FUNC4(path, pool);
  tb->pool = pool;
  tb->result_checksum = FUNC3(result_checksum, pool);

  FUNC0(FUNC1(tb, pool));

  *contents_p = tb->stream;
  return SVN_NO_ERROR;
}