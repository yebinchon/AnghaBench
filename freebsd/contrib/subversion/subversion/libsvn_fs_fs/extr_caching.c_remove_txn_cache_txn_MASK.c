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
struct txn_cleanup_baton_t {int /*<<< orphan*/  fs_pool; int /*<<< orphan*/ ** to_reset; int /*<<< orphan*/ * txn_cache; } ;
typedef  int /*<<< orphan*/  apr_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct txn_cleanup_baton_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  remove_txn_cache_fs ; 

__attribute__((used)) static apr_status_t
FUNC1(void *baton_void)
{
  struct txn_cleanup_baton_t *baton = baton_void;

  /* be careful not to hurt performance by resetting newer txn's caches. */
  if (*baton->to_reset == baton->txn_cache)
    {
      /* This is equivalent to calling svn_fs_fs__reset_txn_caches(). */
      *baton->to_reset = NULL;
    }

  /* It's cleaned up now. Prevent double cleanup. */
  FUNC0(baton->fs_pool,
                        baton,
                        remove_txn_cache_fs);

  return  APR_SUCCESS;
}