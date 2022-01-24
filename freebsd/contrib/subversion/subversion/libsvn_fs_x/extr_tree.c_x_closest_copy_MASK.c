#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
struct TYPE_9__ {int /*<<< orphan*/ * node; } ;
typedef  TYPE_1__ svn_fs_x__dag_path_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
struct TYPE_10__ {int /*<<< orphan*/ * fs; } ;
typedef  TYPE_2__ svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,char const**,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_fs_x__dag_path_allow_null ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**,TYPE_2__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__**,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC11(svn_fs_root_t **root_p,
               const char **path_p,
               svn_fs_root_t *root,
               const char *path,
               apr_pool_t *pool)
{
  svn_fs_t *fs = root->fs;
  svn_fs_x__dag_path_t *dag_path, *copy_dst_dag_path;
  svn_revnum_t copy_dst_rev, created_rev;
  const char *copy_dst_path;
  svn_fs_root_t *copy_dst_root;
  dag_node_t *copy_dst_node;
  apr_pool_t *scratch_pool = FUNC9(pool);

  /* Initialize return values. */
  *root_p = NULL;
  *path_p = NULL;

  FUNC0(FUNC6(&dag_path, root, path, 0, FALSE,
                                 scratch_pool, scratch_pool));

  /* Find the youngest copyroot in the path of this node-rev, which
     will indicate the target of the innermost copy affecting the
     node-rev. */
  FUNC0(FUNC2(&copy_dst_rev, &copy_dst_path,
                                 fs, dag_path));
  if (copy_dst_rev == 0)  /* There are no copies affecting this node-rev. */
    {
      FUNC10(scratch_pool);
      return SVN_NO_ERROR;
    }

  /* It is possible that this node was created from scratch at some
     revision between COPY_DST_REV and REV.  Make sure that PATH
     exists as of COPY_DST_REV and is related to this node-rev. */
  FUNC0(FUNC8(&copy_dst_root, fs, copy_dst_rev, pool));
  FUNC0(FUNC6(&copy_dst_dag_path, copy_dst_root, path,
                                 svn_fs_x__dag_path_allow_null, FALSE,
                                 scratch_pool, scratch_pool));
  if (copy_dst_dag_path == NULL)
    {
      FUNC10(scratch_pool);
      return SVN_NO_ERROR;
    }

  copy_dst_node = copy_dst_dag_path->node;
  if (!FUNC5(copy_dst_node, dag_path->node))
    {
      FUNC10(scratch_pool);
      return SVN_NO_ERROR;
    }

  /* One final check must be done here.  If you copy a directory and
     create a new entity somewhere beneath that directory in the same
     txn, then we can't claim that the copy affected the new entity.
     For example, if you do:

        copy dir1 dir2
        create dir2/new-thing
        commit

     then dir2/new-thing was not affected by the copy of dir1 to dir2.
     We detect this situation by asking if PATH@COPY_DST_REV's
     created-rev is COPY_DST_REV, and that node-revision has no
     predecessors, then there is no relevant closest copy.
  */
  created_rev = FUNC4(copy_dst_node);
  if (created_rev == copy_dst_rev)
    if (!FUNC7(FUNC3(copy_dst_node)))
      {
        FUNC10(scratch_pool);
        return SVN_NO_ERROR;
      }

  /* The copy destination checks out.  Return it. */
  *root_p = copy_dst_root;
  *path_p = FUNC1(pool, copy_dst_path);

  FUNC10(scratch_pool);
  return SVN_NO_ERROR;
}