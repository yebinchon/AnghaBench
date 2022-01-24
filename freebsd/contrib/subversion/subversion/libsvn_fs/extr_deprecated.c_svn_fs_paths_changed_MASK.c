#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_fs_root_t ;
struct TYPE_5__ {int /*<<< orphan*/  prop_mod; int /*<<< orphan*/  text_mod; int /*<<< orphan*/  change_kind; int /*<<< orphan*/  node_rev_id; } ;
typedef  TYPE_1__ svn_fs_path_change_t ;
struct TYPE_6__ {int /*<<< orphan*/  prop_mod; int /*<<< orphan*/  text_mod; int /*<<< orphan*/  change_kind; int /*<<< orphan*/  node_rev_id; } ;
typedef  TYPE_2__ svn_fs_path_change2_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_ssize_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void const**,int /*<<< orphan*/ *,void**) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(apr_hash_t **changed_paths_p, svn_fs_root_t *root,
                     apr_pool_t *pool)
{
  apr_hash_t *changed_paths_new_structs;
  apr_hash_index_t *hi;

  FUNC0(FUNC7(&changed_paths_new_structs, root, pool));
  *changed_paths_p = FUNC2(pool);
  for (hi = FUNC1(pool, changed_paths_new_structs);
       hi;
       hi = FUNC3(hi))
    {
      const void *vkey;
      apr_ssize_t klen;
      void *vval;
      svn_fs_path_change2_t *val;
      svn_fs_path_change_t *change;
      FUNC5(hi, &vkey, &klen, &vval);
      val = vval;
      change = FUNC6(pool, sizeof(*change));
      change->node_rev_id = val->node_rev_id;
      change->change_kind = val->change_kind;
      change->text_mod = val->text_mod;
      change->prop_mod = val->prop_mod;
      FUNC4(*changed_paths_p, vkey, klen, change);
    }
  return SVN_NO_ERROR;
}