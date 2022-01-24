#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * stream; int /*<<< orphan*/  result_checksum; int /*<<< orphan*/ * pool; int /*<<< orphan*/  path; int /*<<< orphan*/ * root; } ;
typedef  TYPE_1__ text_baton_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(svn_stream_t **contents_p,
             svn_fs_root_t *root,
             const char *path,
             svn_checksum_t *result_checksum,
             apr_pool_t *pool)
{
  apr_pool_t *scratch_pool = FUNC5(pool);
  text_baton_t *tb = FUNC2(pool, sizeof(*tb));

  tb->root = root;
  tb->path = FUNC4(path, pool);
  tb->pool = pool;
  tb->result_checksum = FUNC3(result_checksum, pool);

  FUNC0(FUNC1(tb, scratch_pool));

  *contents_p = tb->stream;

  FUNC6(scratch_pool);
  return SVN_NO_ERROR;
}