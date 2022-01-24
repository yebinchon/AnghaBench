#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_fs_t ;
struct TYPE_4__ {int /*<<< orphan*/ * fs; } ;
typedef  TYPE_1__ svn_fs_root_t ;
struct TYPE_5__ {int /*<<< orphan*/  kind; int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ svn_fs_dirent_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct node_kind_args {char const* path; int /*<<< orphan*/  kind; int /*<<< orphan*/  id; TYPE_1__* root; int /*<<< orphan*/ ** table_p; } ;
struct dir_entries_args {char const* path; int /*<<< orphan*/  kind; int /*<<< orphan*/  id; TYPE_1__* root; int /*<<< orphan*/ ** table_p; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct node_kind_args*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txn_body_dir_entries ; 
 int /*<<< orphan*/  txn_body_node_kind ; 

__attribute__((used)) static svn_error_t *
FUNC8(apr_hash_t **table_p,
                 svn_fs_root_t *root,
                 const char *path,
                 apr_pool_t *pool)
{
  struct dir_entries_args args;
  apr_pool_t *iterpool;
  apr_hash_t *table;
  svn_fs_t *fs = root->fs;
  apr_hash_index_t *hi;

  args.table_p = &table;
  args.root    = root;
  args.path    = path;
  FUNC0(FUNC4(root->fs, txn_body_dir_entries, &args,
                                 FALSE, pool));

  iterpool = FUNC6(pool);

  /* Add in the kind data. */
  for (hi = FUNC1(pool, table); hi; hi = FUNC2(hi))
    {
      svn_fs_dirent_t *entry;
      struct node_kind_args nk_args;
      void *val;

      FUNC5(iterpool);

      /* KEY will be the entry name in ancestor (about which we
         simply don't care), VAL the dirent. */
      FUNC3(hi, NULL, NULL, &val);
      entry = val;
      nk_args.id = entry->id;

      /* We don't need to have the retry function destroy the trail
         pool because we're already doing that via the use of an
         iteration pool. */
      FUNC0(FUNC4(fs, txn_body_node_kind, &nk_args,
                                     FALSE, iterpool));
      entry->kind = nk_args.kind;
    }

  FUNC7(iterpool);

  *table_p = table;
  return SVN_NO_ERROR;
}