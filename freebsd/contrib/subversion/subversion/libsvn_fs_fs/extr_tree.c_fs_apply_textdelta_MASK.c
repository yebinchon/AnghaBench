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
struct TYPE_4__ {void* result_checksum; void* base_checksum; int /*<<< orphan*/ * pool; int /*<<< orphan*/  path; int /*<<< orphan*/ * root; } ;
typedef  TYPE_1__ txdelta_baton_t ;
typedef  int /*<<< orphan*/  svn_txdelta_window_handler_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  window_consumer ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_txdelta_window_handler_t *contents_p,
                   void **contents_baton_p,
                   svn_fs_root_t *root,
                   const char *path,
                   svn_checksum_t *base_checksum,
                   svn_checksum_t *result_checksum,
                   apr_pool_t *pool)
{
  txdelta_baton_t *tb = FUNC2(pool, sizeof(*tb));

  tb->root = root;
  tb->path = FUNC4(path, pool);
  tb->pool = pool;
  tb->base_checksum = FUNC3(base_checksum, pool);
  tb->result_checksum = FUNC3(result_checksum, pool);

  FUNC0(FUNC1(tb, pool));

  *contents_p = window_consumer;
  *contents_baton_p = tb;
  return SVN_NO_ERROR;
}