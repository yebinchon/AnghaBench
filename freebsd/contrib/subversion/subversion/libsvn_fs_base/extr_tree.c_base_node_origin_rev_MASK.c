#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {char* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_24__ {TYPE_5__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
struct TYPE_25__ {TYPE_2__* fs; } ;
typedef  TYPE_3__ svn_fs_root_t ;
typedef  int /*<<< orphan*/  const svn_fs_id_t ;
struct TYPE_26__ {scalar_t__ apr_err; } ;
typedef  TYPE_4__ svn_error_t ;
struct txn_pred_id_args {int /*<<< orphan*/  revision; int /*<<< orphan*/  const* id; int /*<<< orphan*/  const* origin_id; int /*<<< orphan*/  const* pred_id; int /*<<< orphan*/ * pool; int /*<<< orphan*/  node_id; } ;
struct id_created_rev_args {int /*<<< orphan*/  revision; int /*<<< orphan*/  const* id; int /*<<< orphan*/  const* origin_id; int /*<<< orphan*/  const* pred_id; int /*<<< orphan*/ * pool; int /*<<< orphan*/  node_id; } ;
struct get_set_node_origin_args {int /*<<< orphan*/  revision; int /*<<< orphan*/  const* id; int /*<<< orphan*/  const* origin_id; int /*<<< orphan*/  const* pred_id; int /*<<< orphan*/ * pool; int /*<<< orphan*/  node_id; } ;
struct TYPE_27__ {scalar_t__ format; } ;
typedef  TYPE_5__ base_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 scalar_t__ SVN_ERR_FS_NO_SUCH_NODE_ORIGIN ; 
 scalar_t__ SVN_FS_BASE__MIN_NODE_ORIGINS_FORMAT ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_4__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/  const**,TYPE_3__*,char const*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC3 (char const**,int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 char* FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 TYPE_4__* FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,struct txn_pred_id_args*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC10 (TYPE_3__**,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC14 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  txn_body_get_node_origin ; 
 int /*<<< orphan*/  txn_body_id_created_rev ; 
 int /*<<< orphan*/  txn_body_pred_id ; 
 int /*<<< orphan*/  txn_body_set_node_origin ; 

__attribute__((used)) static svn_error_t *
FUNC16(svn_revnum_t *revision,
                     svn_fs_root_t *root,
                     const char *path,
                     apr_pool_t *pool)
{
  svn_fs_t *fs = root->fs;
  base_fs_data_t *bfd = fs->fsap_data;
  struct get_set_node_origin_args args;
  const svn_fs_id_t *origin_id = NULL;
  struct id_created_rev_args icr_args;

  /* Canonicalize the input path so that the path-math that
     prev_location() does below will work. */
  path = FUNC6(path, pool);

  /* Special-case the root node (for performance reasons) */
  if (FUNC4(path, "/") == 0)
    {
      *revision = 0;
      return SVN_NO_ERROR;
    }

  /* If we have support for the node-origins table, we'll try to use
     it. */
  if (bfd->format >= SVN_FS_BASE__MIN_NODE_ORIGINS_FORMAT)
    {
      const svn_fs_id_t *id;
      svn_error_t *err;

      FUNC0(FUNC2(&id, root, path, pool));
      args.node_id = FUNC8(id);
      err = FUNC9(root->fs, txn_body_get_node_origin, &args,
                                   FALSE, pool);

      /* If we got a value for the origin node-revision-ID, that's
         great.  If we didn't, that's sad but non-fatal -- we'll just
         figure it out the hard way, then record it so we don't have
         suffer again the next time. */
      if (! err)
        {
          origin_id = args.origin_id;
        }
      else if (err->apr_err == SVN_ERR_FS_NO_SUCH_NODE_ORIGIN)
        {
          FUNC5(err);
          err = SVN_NO_ERROR;
        }
      FUNC0(err);
    }

  /* If we haven't yet found a node origin ID, we'll go spelunking for one. */
  if (! origin_id)
    {
      svn_fs_root_t *curroot = root;
      apr_pool_t *subpool = FUNC12(pool);
      apr_pool_t *predidpool = FUNC12(pool);
      svn_stringbuf_t *lastpath =
        FUNC14(path, pool);
      svn_revnum_t lastrev = SVN_INVALID_REVNUM;
      const svn_fs_id_t *pred_id;

      /* Walk the closest-copy chain back to the first copy in our history.

         NOTE: We merely *assume* that this is faster than walking the
         predecessor chain, because we *assume* that copies of parent
         directories happen less often than modifications to a given item. */
      while (1)
        {
          svn_revnum_t currev;
          const char *curpath = lastpath->data;

          /* Get a root pointing to LASTREV.  (The first time around,
             LASTREV is invalid, but that's cool because CURROOT is
             already initialized.)  */
          if (FUNC1(lastrev))
            FUNC0(FUNC10(&curroot, fs,
                                               lastrev, subpool));

          /* Find the previous location using the closest-copy shortcut. */
          FUNC0(FUNC3(&curpath, &currev, fs, curroot,
                                curpath, subpool));
          if (! curpath)
            break;

          /* Update our LASTPATH and LASTREV variables (which survive
             SUBPOOL). */
          FUNC15(lastpath, curpath);
          lastrev = currev;
        }

      /* Walk the predecessor links back to origin. */
      FUNC0(FUNC2(&pred_id, curroot, lastpath->data, pool));
      while (1)
        {
          struct txn_pred_id_args pid_args;
          FUNC11(subpool);
          pid_args.id = pred_id;
          pid_args.pred_id = NULL;
          pid_args.pool = subpool;
          FUNC0(FUNC9(fs, txn_body_pred_id, &pid_args,
                                         FALSE, subpool));
          if (! pid_args.pred_id)
            break;
          FUNC11(predidpool);
          pred_id = FUNC7(pid_args.pred_id, predidpool);
        }

      /* Okay.  PRED_ID should hold our origin ID now.  */
      origin_id = FUNC7(pred_id, pool);

      /* If our filesystem version supports it, let's remember this
         value from now on.  */
      if (bfd->format >= SVN_FS_BASE__MIN_NODE_ORIGINS_FORMAT)
        {
          args.origin_id = origin_id;
          FUNC0(FUNC9(root->fs, txn_body_set_node_origin,
                                         &args, TRUE, subpool));
        }

      FUNC13(predidpool);
      FUNC13(subpool);
    }

  /* Okay.  We have an origin node-revision-ID.  Let's get a created
     revision from it. */
  icr_args.id = origin_id;
  FUNC0(FUNC9(root->fs, txn_body_id_created_rev, &icr_args,
                                 TRUE, pool));
  *revision = icr_args.revision;
  return SVN_NO_ERROR;
}