#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_10__ ;

/* Type definitions */
struct TYPE_20__ {int txn_flags; int /*<<< orphan*/  rev; TYPE_3__* fs; scalar_t__ is_txn_root; } ;
typedef  TYPE_1__ svn_fs_root_t ;
typedef  scalar_t__ svn_fs_path_change_kind_t ;
typedef  int /*<<< orphan*/  svn_fs_fs__id_part_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_21__ {TYPE_10__* parent; int /*<<< orphan*/  entry; int /*<<< orphan*/ * node; } ;
typedef  TYPE_2__ parent_path_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_int64_t ;
struct TYPE_22__ {int /*<<< orphan*/  path; } ;
struct TYPE_19__ {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  SVN_ERR_UNSUPPORTED_FEATURE ; 
 int SVN_FS_TXN_CHECK_LOCKS ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_10__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_10__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__**,TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  open_path_last_optional ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC14 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char const*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (TYPE_3__*) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ svn_fs_path_change_add ; 
 scalar_t__ svn_fs_path_change_replace ; 

__attribute__((used)) static svn_error_t *
FUNC22(svn_fs_root_t *from_root,
            const char *from_path,
            svn_fs_root_t *to_root,
            const char *to_path,
            svn_boolean_t preserve_history,
            apr_pool_t *pool)
{
  dag_node_t *from_node;
  parent_path_t *to_parent_path;
  const svn_fs_fs__id_part_t *txn_id = FUNC11(to_root);
  svn_boolean_t same_p;

  /* Use an error check, not an assert, because even the caller cannot
     guarantee that a filesystem's UUID has not changed "on the fly". */
  FUNC0(FUNC5(&same_p, from_root->fs, to_root->fs, pool));
  if (! same_p)
    return FUNC13
      (SVN_ERR_UNSUPPORTED_FEATURE, NULL,
       FUNC2("Cannot copy between two different filesystems ('%s' and '%s')"),
       from_root->fs->path, to_root->fs->path);

  /* more things that we can't do ATM */
  if (from_root->is_txn_root)
    return FUNC12
      (SVN_ERR_UNSUPPORTED_FEATURE, NULL,
       FUNC2("Copy from mutable tree not currently supported"));

  if (! to_root->is_txn_root)
    return FUNC12
      (SVN_ERR_UNSUPPORTED_FEATURE, NULL,
       FUNC2("Copy immutable tree not supported"));

  /* Get the NODE for FROM_PATH in FROM_ROOT.*/
  FUNC0(FUNC6(&from_node, from_root, from_path, pool));

  /* Build up the parent path from TO_PATH in TO_ROOT.  If the last
     component does not exist, it's not that big a deal.  We'll just
     make one there. */
  FUNC0(FUNC9(&to_parent_path, to_root, to_path,
                    open_path_last_optional, TRUE, pool));

  /* Check to see if path (or any child thereof) is locked; if so,
     check that we can use the existing lock(s). */
  if (to_root->txn_flags & SVN_FS_TXN_CHECK_LOCKS)
    FUNC0(FUNC15(to_path, to_root->fs,
                                              TRUE, FALSE, pool));

  /* If the destination node already exists as the same node as the
     source (in other words, this operation would result in nothing
     happening at all), just do nothing an return successfully,
     proud that you saved yourself from a tiresome task. */
  if (to_parent_path->node &&
      FUNC21(FUNC17(from_node),
                       FUNC17(to_parent_path->node)))
    return SVN_NO_ERROR;

  if (! from_root->is_txn_root)
    {
      svn_fs_path_change_kind_t kind;
      dag_node_t *new_node;
      const char *from_canonpath;
      apr_int64_t mergeinfo_start;
      apr_int64_t mergeinfo_end;

      /* If TO_PATH already existed prior to the copy, note that this
         operation is a replacement, not an addition. */
      if (to_parent_path->node)
        {
          kind = svn_fs_path_change_replace;
          if (FUNC20(to_root->fs))
            FUNC0(FUNC18(&mergeinfo_start,
                                                       to_parent_path->node));
        }
      else
        {
          kind = svn_fs_path_change_add;
          mergeinfo_start = 0;
        }

      if (FUNC20(to_root->fs))
        FUNC0(FUNC18(&mergeinfo_end,
                                                   from_node));

      /* Make sure the target node's parents are mutable.  */
      FUNC0(FUNC8(to_root, to_parent_path->parent,
                                to_path, pool));

      /* Canonicalize the copyfrom path. */
      from_canonpath = FUNC14(from_path, pool);

      FUNC0(FUNC16(to_parent_path->parent->node,
                                  to_parent_path->entry,
                                  from_node,
                                  preserve_history,
                                  from_root->rev,
                                  from_canonpath,
                                  txn_id, pool));

      if (kind != svn_fs_path_change_add)
        FUNC0(FUNC4(to_root,
                                          FUNC10(to_parent_path,
                                                           pool), pool));

      if (FUNC20(to_root->fs)
          && mergeinfo_start != mergeinfo_end)
        FUNC0(FUNC7(to_parent_path->parent,
                                            mergeinfo_end - mergeinfo_start,
                                            pool));

      /* Make a record of this modification in the changes table. */
      FUNC0(FUNC6(&new_node, to_root, to_path, pool));
      FUNC0(FUNC3(to_root->fs, txn_id, to_path,
                         FUNC17(new_node), kind, FALSE,
                         FALSE, FALSE, FUNC19(from_node),
                         from_root->rev, from_canonpath, pool));
    }
  else
    {
      /* See IZ Issue #436 */
      /* Copying from transaction roots not currently available.

         ### cmpilato todo someday: make this not so. :-) Note that
         when copying from mutable trees, you have to make sure that
         you aren't creating a cyclic graph filesystem, and a simple
         referencing operation won't cut it.  Currently, we should not
         be able to reach this clause, and the interface reports that
         this only works from immutable trees anyway, but JimB has
         stated that this requirement need not be necessary in the
         future. */

      FUNC1();
    }

  return SVN_NO_ERROR;
}