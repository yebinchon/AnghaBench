#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int /*<<< orphan*/  sdb; int /*<<< orphan*/  wc_id; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_24__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_INSERT_NODE ; 
 int /*<<< orphan*/  STMT_INSERT_WORKING_NODE_COPY_FROM ; 
 int /*<<< orphan*/  STMT_SELECT_NODE_INFO ; 
 int /*<<< orphan*/  STMT_SELECT_OP_DEPTH_CHILDREN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_NOT_FOUND ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_UNEXPECTED_STATUS ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const*,TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*,TYPE_1__*,char const*,int,int,int,scalar_t__,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const**,TYPE_1__*,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int*,scalar_t__*,int*,TYPE_1__*,char const*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kind_map ; 
 int /*<<< orphan*/  FUNC9 (int*,int*,int*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int*,TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  presence_map ; 
 TYPE_2__* FUNC12 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 TYPE_2__* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC16 (TYPE_2__*) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 char* FUNC17 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,...) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
#define  svn_wc__db_status_added 135 
#define  svn_wc__db_status_copied 134 
#define  svn_wc__db_status_deleted 133 
#define  svn_wc__db_status_excluded 132 
#define  svn_wc__db_status_moved_here 131 
#define  svn_wc__db_status_normal 130 
#define  svn_wc__db_status_not_present 129 
#define  svn_wc__db_status_server_excluded 128 

__attribute__((used)) static svn_error_t *
FUNC25(svn_wc__db_wcroot_t *src_wcroot,
           const char *src_relpath,
           svn_wc__db_wcroot_t *dst_wcroot,
           const char *dst_relpath,
           const svn_skel_t *work_items,
           int move_op_depth,
           apr_pool_t *scratch_pool)
{
  const char *copyfrom_relpath;
  svn_revnum_t copyfrom_rev;
  svn_wc__db_status_t status;
  svn_wc__db_status_t dst_presence;
  svn_boolean_t op_root;
  apr_int64_t copyfrom_id;
  int dst_op_depth;
  int dst_np_op_depth;
  int dst_parent_op_depth;
  svn_node_kind_t kind;
  const apr_array_header_t *children;

  FUNC0(FUNC7(&copyfrom_id, &copyfrom_relpath, &copyfrom_rev,
                            &status, &kind, &op_root,
                            src_wcroot, src_relpath, dst_wcroot,
                            scratch_pool, scratch_pool));

  FUNC0(FUNC9(&dst_op_depth, &dst_np_op_depth,
                            &dst_parent_op_depth,
                            copyfrom_id, copyfrom_relpath, copyfrom_rev,
                            dst_wcroot, dst_relpath, scratch_pool));

  FUNC1(kind == svn_node_file || kind == svn_node_dir);

  /* ### New status, not finished, see notes/wc-ng/copying */
  switch (status)
    {
    case svn_wc__db_status_normal:
    case svn_wc__db_status_added:
    case svn_wc__db_status_moved_here:
    case svn_wc__db_status_copied:
      dst_presence = svn_wc__db_status_normal;
      break;
    case svn_wc__db_status_deleted:
      if (op_root)
        {
          /* If the lower layer is already shadowcopied we can skip adding
             a not present node. */
          svn_error_t *err;
          svn_wc__db_status_t dst_status;

          err = FUNC12(&dst_status, NULL, NULL, NULL, NULL, NULL, NULL,
                          NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                          NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                          dst_wcroot, dst_relpath, scratch_pool, scratch_pool);

          if (err)
            {
              if (err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
                FUNC14(err);
              else
                return FUNC16(err);
            }
          else if (dst_status == svn_wc__db_status_deleted)
            {
              /* Node is already deleted; skip the NODES work, but do
                 install wq items if requested */
              FUNC0(FUNC3(dst_wcroot->sdb, work_items,
                                     scratch_pool));
              return SVN_NO_ERROR;
            }
        }
      else
        {
          /* This node is either a not-present node (which should be copied), or
             a base-delete of some lower layer (which shouldn't).
             Subversion <= 1.7 always added a not-present node here, which is
             safe (as it postpones the hard work until commit time and then we
             ask the repository), but it breaks some move scenarios.
             */

           if (! copyfrom_relpath)
             {
               FUNC0(FUNC3(dst_wcroot->sdb, work_items,
                                     scratch_pool));
               return SVN_NO_ERROR;
             }

           /* Fall through. Install not present node */
        }
    case svn_wc__db_status_not_present:
    case svn_wc__db_status_excluded:
      /* These presence values should not create a new op depth */
      if (dst_np_op_depth > 0)
        {
          dst_op_depth = dst_np_op_depth;
          dst_np_op_depth = -1;
        }
      if (status == svn_wc__db_status_excluded)
        dst_presence = svn_wc__db_status_excluded;
      else
        dst_presence = svn_wc__db_status_not_present;
      break;
    case svn_wc__db_status_server_excluded:
      return FUNC15(SVN_ERR_WC_PATH_UNEXPECTED_STATUS, NULL,
                               FUNC2("Cannot copy '%s' excluded by server"),
                               FUNC11(src_wcroot,
                                                      src_relpath,
                                                      scratch_pool));
    default:
      /* Perhaps we should allow incomplete to incomplete? We can't
         avoid incomplete working nodes as one step in copying a
         directory is to add incomplete children. */
      return FUNC15(SVN_ERR_WC_PATH_UNEXPECTED_STATUS, NULL,
                               FUNC2("Cannot handle status of '%s'"),
                               FUNC11(src_wcroot,
                                                      src_relpath,
                                                      scratch_pool));
    }

  if (kind == svn_node_dir)
    {
      int src_op_depth;

      FUNC0(FUNC10(&src_op_depth, src_wcroot, src_relpath));
      FUNC0(FUNC6(&children, src_wcroot, src_relpath,
                              STMT_SELECT_OP_DEPTH_CHILDREN, src_op_depth,
                              scratch_pool, scratch_pool));
    }
  else
    children = NULL;

  if (src_wcroot == dst_wcroot)
    {
      svn_sqlite__stmt_t *stmt;
      const char *dst_parent_relpath = FUNC17(dst_relpath,
                                                           scratch_pool);

      FUNC0(FUNC21(&stmt, src_wcroot->sdb,
                                        STMT_INSERT_WORKING_NODE_COPY_FROM));

      FUNC0(FUNC19(stmt, "issdst",
                    src_wcroot->wc_id, src_relpath,
                    dst_relpath,
                    dst_op_depth,
                    dst_parent_relpath,
                    presence_map, dst_presence));

      if (move_op_depth > 0)
        {
          if (FUNC13(dst_relpath) == move_op_depth)
            {
              /* We're moving the root of the move operation.
               *
               * When an added node or the op-root of a copy is moved,
               * there is no 'moved-from' corresponding to the moved-here
               * node. So the net effect is the same as copy+delete.
               * Perform a normal copy operation in these cases. */
              if (!(status == svn_wc__db_status_added ||
                    (status == svn_wc__db_status_copied && op_root)))
                FUNC0(FUNC18(stmt, 7, 1));
            }
          else
            {
              svn_sqlite__stmt_t *info_stmt;
              svn_boolean_t have_row;

              /* We're moving a child along with the root of the move.
               *
               * Set moved-here depending on dst_parent, propagating the
               * above decision to moved-along children at the same op_depth.
               * We can't use scan_addition() to detect moved-here because
               * the delete-half of the move might not yet exist. */
              FUNC0(FUNC21(&info_stmt, dst_wcroot->sdb,
                                                STMT_SELECT_NODE_INFO));
              FUNC0(FUNC19(info_stmt, "is", dst_wcroot->wc_id,
                                        dst_parent_relpath));
              FUNC0(FUNC23(&have_row, info_stmt));
              FUNC1(have_row);
              if (FUNC20(info_stmt, 15) &&
                  dst_op_depth == dst_parent_op_depth)
                {
                  FUNC0(FUNC18(stmt, 7, 1));
                  FUNC0(FUNC22(info_stmt));
                }
              else
                {
                  FUNC0(FUNC22(info_stmt));

                  /* If the child has been moved into the tree we're moving,
                   * keep its moved-here bit set. */
                  FUNC0(FUNC21(&info_stmt,
                                                    dst_wcroot->sdb,
                                                    STMT_SELECT_NODE_INFO));
                  FUNC0(FUNC19(info_stmt, "is",
                                            dst_wcroot->wc_id, src_relpath));
                  FUNC0(FUNC23(&have_row, info_stmt));
                  FUNC1(have_row);
                  if (FUNC20(info_stmt, 15))
                    FUNC0(FUNC18(stmt, 7, 1));
                  FUNC0(FUNC22(info_stmt));
                }
            }
        }

      FUNC0(FUNC24(stmt));

      /* ### Copying changelist is OK for a move but what about a copy? */
      FUNC0(FUNC4(src_wcroot, src_relpath,
                          dst_wcroot, dst_relpath, scratch_pool));

      if (dst_np_op_depth > 0)
        {
          /* We introduce a not-present node at the parent's op_depth to
             properly start a new op-depth at our own op_depth. This marks
             us as an op_root for commit and allows reverting just this
             operation */

          FUNC0(FUNC21(&stmt, dst_wcroot->sdb,
                                            STMT_INSERT_NODE));
          FUNC0(FUNC19(stmt, "isdsisrtnt",
                                    src_wcroot->wc_id, dst_relpath,
                                    dst_np_op_depth, dst_parent_relpath,
                                    copyfrom_id, copyfrom_relpath,
                                    copyfrom_rev,
                                    presence_map,
                                       svn_wc__db_status_not_present,
                                    /* NULL */
                                    kind_map, kind));

          FUNC0(FUNC24(stmt));
        }
      /* Insert incomplete children, if relevant.
         The children are part of the same op and so have the same op_depth.
         (The only time we'd want a different depth is during a recursive
         simple add, but we never insert children here during a simple add.) */
      if (kind == svn_node_dir
          && dst_presence == svn_wc__db_status_normal)
        FUNC0(FUNC8(
                  dst_wcroot->sdb,
                  dst_wcroot->wc_id,
                  dst_relpath,
                  copyfrom_id,
                  copyfrom_relpath,
                  copyfrom_rev,
                  children,
                  dst_op_depth,
                  scratch_pool));
    }
  else
    {
      FUNC0(FUNC5(src_wcroot, src_relpath, dst_wcroot,
                            dst_relpath, dst_presence, dst_op_depth,
                            dst_np_op_depth, kind,
                            children, copyfrom_id, copyfrom_relpath,
                            copyfrom_rev, scratch_pool));
    }

  FUNC0(FUNC3(dst_wcroot->sdb, work_items, scratch_pool));

  return SVN_NO_ERROR;
}