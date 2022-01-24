#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_5__ ;
typedef  struct TYPE_32__   TYPE_4__ ;
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;

/* Type definitions */
struct TYPE_29__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ trail_t ;
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
struct TYPE_30__ {char* txn; int /*<<< orphan*/  rev; scalar_t__ is_txn_root; int /*<<< orphan*/ * fs; } ;
typedef  TYPE_2__ svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
struct TYPE_31__ {scalar_t__ apr_err; } ;
typedef  TYPE_3__ svn_error_t ;
struct closest_copy_args {char* path; TYPE_2__** root_p; int /*<<< orphan*/  pool; int /*<<< orphan*/ ** path_p; TYPE_2__* root; } ;
struct TYPE_32__ {int /*<<< orphan*/ * node; } ;
typedef  TYPE_4__ parent_path_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
struct TYPE_33__ {int /*<<< orphan*/  dst_noderev_id; } ;
typedef  TYPE_5__ copy_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_FS_NOT_DIRECTORY ; 
 scalar_t__ SVN_ERR_FS_NOT_FOUND ; 
 TYPE_3__* SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const**,TYPE_5__**,int /*<<< orphan*/ *,TYPE_4__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ **,TYPE_2__*,char const*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__**,TYPE_2__*,char const*,int /*<<< orphan*/ ,char const*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 TYPE_3__* FUNC7 (TYPE_3__*) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,scalar_t__,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__**,int /*<<< orphan*/ *,char const*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ svn_node_none ; 

__attribute__((used)) static svn_error_t *
FUNC18(void *baton, trail_t *trail)
{
  struct closest_copy_args *args = baton;
  svn_fs_root_t *root = args->root;
  const char *path = args->path;
  svn_fs_t *fs = root->fs;
  parent_path_t *parent_path;
  const svn_fs_id_t *node_id;
  const char *txn_id, *copy_id;
  copy_t *copy = NULL;
  svn_fs_root_t *copy_dst_root;
  dag_node_t *path_node_in_copy_dst, *copy_dst_node, *copy_dst_root_node;
  const char *copy_dst_path;
  svn_revnum_t copy_dst_rev, created_rev;
  svn_error_t *err;

  *(args->path_p) = NULL;
  *(args->root_p) = NULL;

  /* Get the transaction ID associated with our root. */
  if (root->is_txn_root)
    txn_id = root->txn;
  else
    FUNC0(FUNC16(&txn_id, fs, root->rev,
                                        trail, trail->pool));

  /* Open PATH in ROOT -- it must exist. */
  FUNC0(FUNC5(&parent_path, root, path, 0, txn_id,
                    trail, trail->pool));
  node_id = FUNC9(parent_path->node);

  /* Now, examine the copy inheritance rules in play should our path
     be made mutable in the future (if it isn't already).  This will
     tell us about the youngest affecting copy.  */
  FUNC0(FUNC2(&copy_id, &copy, fs, parent_path,
                                   trail, trail->pool));

  /* Easy out:  if the copy ID is 0, there's nothing of interest here. */
  if (((copy_id)[0] == '0') && ((copy_id)[1] == '\0'))
    return SVN_NO_ERROR;

  /* Fetch our copy if examine_copy_inheritance() didn't do it for us. */
  if (! copy)
    FUNC0(FUNC17(&copy, fs, copy_id, trail, trail->pool));

  /* Figure out the destination path and revision of the copy operation. */
  FUNC0(FUNC10(&copy_dst_node, fs, copy->dst_noderev_id,
                                    trail, trail->pool));
  copy_dst_path = FUNC8(copy_dst_node);
  FUNC0(FUNC12(&copy_dst_rev, copy_dst_node,
                                        trail, trail->pool));

  /* Turn that revision into a revision root. */
  FUNC0(FUNC14(&copy_dst_root_node, fs,
                                         copy_dst_rev, trail, args->pool));
  copy_dst_root = FUNC4(fs, copy_dst_rev,
                                     copy_dst_root_node, args->pool);

  /* It is possible that this node was created from scratch at some
     revision between COPY_DST_REV and the transaction associated with
     our ROOT.  Make sure that PATH exists as of COPY_DST_REV and is
     related to this node-rev. */
  err = FUNC3(&path_node_in_copy_dst, copy_dst_root, path,
                trail, trail->pool);
  if (err)
    {
      if ((err->apr_err == SVN_ERR_FS_NOT_FOUND)
          || (err->apr_err == SVN_ERR_FS_NOT_DIRECTORY))
        {
          FUNC6(err);
          return SVN_NO_ERROR;
        }
      return FUNC7(err);
    }
  if ((FUNC13(path_node_in_copy_dst) == svn_node_none)
      || (! (FUNC15
             (node_id, FUNC9(path_node_in_copy_dst)))))
    {
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
  FUNC0(FUNC12(&created_rev, path_node_in_copy_dst,
                                        trail, trail->pool));
  if (created_rev == copy_dst_rev)
    {
      const svn_fs_id_t *pred_id;
      FUNC0(FUNC11(&pred_id,
                                                  path_node_in_copy_dst,
                                                  trail, trail->pool));
      if (! pred_id)
        return SVN_NO_ERROR;
    }

  *(args->path_p) = FUNC1(args->pool, copy_dst_path);
  *(args->root_p) = copy_dst_root;

  return SVN_NO_ERROR;
}