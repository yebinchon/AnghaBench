#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_2__* vtable; } ;
typedef  TYPE_3__ svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_fs_path_change_iterator_t ;
struct TYPE_15__ {char* data; int /*<<< orphan*/  len; } ;
struct TYPE_18__ {TYPE_1__ path; int /*<<< orphan*/  text_mod; int /*<<< orphan*/  prop_mod; int /*<<< orphan*/  node_kind; int /*<<< orphan*/  mergeinfo_mod; int /*<<< orphan*/  copyfrom_path; int /*<<< orphan*/  copyfrom_rev; scalar_t__ copyfrom_known; int /*<<< orphan*/  change_kind; } ;
typedef  TYPE_4__ svn_fs_path_change3_t ;
struct TYPE_19__ {int /*<<< orphan*/  text_mod; int /*<<< orphan*/  prop_mod; int /*<<< orphan*/  node_kind; int /*<<< orphan*/  mergeinfo_mod; int /*<<< orphan*/  copyfrom_path; int /*<<< orphan*/  copyfrom_rev; scalar_t__ copyfrom_known; } ;
typedef  TYPE_5__ svn_fs_path_change2_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_16__ {int /*<<< orphan*/  (* paths_changed ) (int /*<<< orphan*/ **,TYPE_3__*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_FS_EMULATE_PATHS_CHANGED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__**,char const**,TYPE_3__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const**,TYPE_3__*,char const*,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_fs_path_change_delete ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC14(apr_hash_t **changed_paths_p,
                      svn_fs_root_t *root,
                      apr_pool_t *pool)
{
  svn_boolean_t emulate =    !root->vtable->paths_changed
                          || SVN_FS_EMULATE_PATHS_CHANGED;

  if (emulate)
    {
      apr_pool_t *scratch_pool = FUNC12(pool);
      apr_hash_t *changes = FUNC10(pool);

      svn_fs_path_change_iterator_t *iterator;
      svn_fs_path_change3_t *change;

      FUNC0(FUNC9(&iterator, root, scratch_pool,
                                    scratch_pool));

      FUNC0(FUNC8(&change, iterator));
      while (change)
        {
          svn_fs_path_change2_t *copy;
          const svn_fs_id_t *id_copy;
          const char *change_path = change->path.data;
          svn_fs_root_t *change_root = root;

          /* Copy CHANGE to old API struct. */
          if (change->change_kind == svn_fs_path_change_delete)
            FUNC0(FUNC5(&change_root, &change_path,
                                             change_root, change_path,
                                             scratch_pool, scratch_pool));

          FUNC0(FUNC6(&id_copy, change_root, change_path, pool));

          copy = FUNC7(id_copy, change->change_kind,
                                            pool);
          copy->copyfrom_known = change->copyfrom_known;
          if (   copy->copyfrom_known
              && FUNC1(change->copyfrom_rev))
            {
              copy->copyfrom_rev = change->copyfrom_rev;
              copy->copyfrom_path = FUNC2(pool, change->copyfrom_path);
            }
          copy->mergeinfo_mod = change->mergeinfo_mod;
          copy->node_kind = change->node_kind;
          copy->prop_mod = change->prop_mod;
          copy->text_mod = change->text_mod;

          FUNC11(changes, FUNC3(pool, change->path.data,
                                                change->path.len), copy);

          /* Next change. */
          FUNC0(FUNC8(&change, iterator));
        }
      FUNC13(scratch_pool);

      *changed_paths_p = changes;
    }
  else
    {
      FUNC0(root->vtable->paths_changed(changed_paths_p, root, pool));
    }

  return SVN_NO_ERROR;
}