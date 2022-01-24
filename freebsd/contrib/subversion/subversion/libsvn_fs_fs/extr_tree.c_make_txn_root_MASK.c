#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
struct TYPE_6__ {TYPE_2__* fsap_data; int /*<<< orphan*/  pool; int /*<<< orphan*/  txn; int /*<<< orphan*/  rev; int /*<<< orphan*/  txn_flags; int /*<<< orphan*/  is_txn_root; } ;
typedef  TYPE_1__ svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_fs_fs__id_part_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_7__ {int /*<<< orphan*/  txn_node_cache; int /*<<< orphan*/  txn_id; } ;
typedef  TYPE_2__ fs_txn_root_data_t ;
typedef  int /*<<< orphan*/  apr_uint32_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_HASH_KEY_STRING ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_fs_fs__dag_deserialize ; 
 int /*<<< orphan*/  svn_fs_fs__dag_serialize ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC7(svn_fs_root_t **root_p,
              svn_fs_t *fs,
              const svn_fs_fs__id_part_t *txn,
              svn_revnum_t base_rev,
              apr_uint32_t flags,
              apr_pool_t *pool)
{
  svn_fs_root_t *root = FUNC3(fs, pool);
  fs_txn_root_data_t *frd = FUNC1(root->pool, sizeof(*frd));
  frd->txn_id = *txn;

  root->is_txn_root = TRUE;
  root->txn = FUNC5(txn, root->pool);
  root->txn_flags = flags;
  root->rev = base_rev;

  /* Because this cache actually tries to invalidate elements, keep
     the number of elements per page down.

     Note that since dag_node_cache_invalidate uses svn_cache__iter,
     this *cannot* be a memcache-based cache.  */
  FUNC0(FUNC4(&(frd->txn_node_cache),
                                      svn_fs_fs__dag_serialize,
                                      svn_fs_fs__dag_deserialize,
                                      APR_HASH_KEY_STRING,
                                      32, 20, FALSE,
                                      FUNC2(pool, txn, ":TXN",
                                                  SVN_VA_NULL),
                                      root->pool));

  /* Initialize transaction-local caches in FS.

     Note that we cannot put those caches in frd because that content
     fs root object is not available where we would need it. */
  FUNC0(FUNC6(fs, root->txn, root->pool));

  root->fsap_data = frd;

  *root_p = root;
  return SVN_NO_ERROR;
}