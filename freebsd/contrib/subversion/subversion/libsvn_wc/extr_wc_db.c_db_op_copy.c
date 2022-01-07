
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_23__ {int sdb; int wc_id; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_status_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_skel_t ;
typedef int svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_24__ {int apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;
typedef int apr_array_header_t ;


 int STMT_INSERT_NODE ;
 int STMT_INSERT_WORKING_NODE_COPY_FROM ;
 int STMT_SELECT_NODE_INFO ;
 int STMT_SELECT_OP_DEPTH_CHILDREN ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_WC_PATH_NOT_FOUND ;
 int SVN_ERR_WC_PATH_UNEXPECTED_STATUS ;
 TYPE_2__* SVN_NO_ERROR ;
 int _ (char*) ;
 int add_work_items (int ,int const*,int *) ;
 int copy_actual (TYPE_1__*,char const*,TYPE_1__*,char const*,int *) ;
 int cross_db_copy (TYPE_1__*,char const*,TYPE_1__*,char const*,int,int,int,scalar_t__,int const*,int ,char const*,int ,int *) ;
 int gather_children (int const**,TYPE_1__*,char const*,int ,int,int *,int *) ;
 int get_info_for_copy (int *,char const**,int *,int*,scalar_t__*,int*,TYPE_1__*,char const*,TYPE_1__*,int *,int *) ;
 int insert_incomplete_children (int ,int ,char const*,int ,char const*,int ,int const*,int,int *) ;
 int kind_map ;
 int op_depth_for_copy (int*,int*,int*,int ,char const*,int ,TYPE_1__*,char const*,int *) ;
 int op_depth_of (int*,TYPE_1__*,char const*) ;
 int path_for_error_message (TYPE_1__*,char const*,int *) ;
 int presence_map ;
 TYPE_2__* read_info (int*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,TYPE_1__*,char const*,int *,int *) ;
 int relpath_depth (char const*) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_createf (int ,int *,int ,int ) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 char* svn_relpath_dirname (char const*,int *) ;
 int svn_sqlite__bind_int (int *,int,int) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*,...) ;
 scalar_t__ svn_sqlite__column_boolean (int *,int) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (int*,int *) ;
 int svn_sqlite__step_done (int *) ;
__attribute__((used)) static svn_error_t *
db_op_copy(svn_wc__db_wcroot_t *src_wcroot,
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

  SVN_ERR(get_info_for_copy(&copyfrom_id, &copyfrom_relpath, &copyfrom_rev,
                            &status, &kind, &op_root,
                            src_wcroot, src_relpath, dst_wcroot,
                            scratch_pool, scratch_pool));

  SVN_ERR(op_depth_for_copy(&dst_op_depth, &dst_np_op_depth,
                            &dst_parent_op_depth,
                            copyfrom_id, copyfrom_relpath, copyfrom_rev,
                            dst_wcroot, dst_relpath, scratch_pool));

  SVN_ERR_ASSERT(kind == svn_node_file || kind == svn_node_dir);


  switch (status)
    {
    case 130:
    case 135:
    case 131:
    case 134:
      dst_presence = 130;
      break;
    case 133:
      if (op_root)
        {


          svn_error_t *err;
          svn_wc__db_status_t dst_status;

          err = read_info(&dst_status, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                          ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                          ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                          dst_wcroot, dst_relpath, scratch_pool, scratch_pool);

          if (err)
            {
              if (err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
                svn_error_clear(err);
              else
                return svn_error_trace(err);
            }
          else if (dst_status == 133)
            {


              SVN_ERR(add_work_items(dst_wcroot->sdb, work_items,
                                     scratch_pool));
              return SVN_NO_ERROR;
            }
        }
      else
        {







           if (! copyfrom_relpath)
             {
               SVN_ERR(add_work_items(dst_wcroot->sdb, work_items,
                                     scratch_pool));
               return SVN_NO_ERROR;
             }


        }
    case 129:
    case 132:

      if (dst_np_op_depth > 0)
        {
          dst_op_depth = dst_np_op_depth;
          dst_np_op_depth = -1;
        }
      if (status == 132)
        dst_presence = 132;
      else
        dst_presence = 129;
      break;
    case 128:
      return svn_error_createf(SVN_ERR_WC_PATH_UNEXPECTED_STATUS, ((void*)0),
                               _("Cannot copy '%s' excluded by server"),
                               path_for_error_message(src_wcroot,
                                                      src_relpath,
                                                      scratch_pool));
    default:



      return svn_error_createf(SVN_ERR_WC_PATH_UNEXPECTED_STATUS, ((void*)0),
                               _("Cannot handle status of '%s'"),
                               path_for_error_message(src_wcroot,
                                                      src_relpath,
                                                      scratch_pool));
    }

  if (kind == svn_node_dir)
    {
      int src_op_depth;

      SVN_ERR(op_depth_of(&src_op_depth, src_wcroot, src_relpath));
      SVN_ERR(gather_children(&children, src_wcroot, src_relpath,
                              STMT_SELECT_OP_DEPTH_CHILDREN, src_op_depth,
                              scratch_pool, scratch_pool));
    }
  else
    children = ((void*)0);

  if (src_wcroot == dst_wcroot)
    {
      svn_sqlite__stmt_t *stmt;
      const char *dst_parent_relpath = svn_relpath_dirname(dst_relpath,
                                                           scratch_pool);

      SVN_ERR(svn_sqlite__get_statement(&stmt, src_wcroot->sdb,
                                        STMT_INSERT_WORKING_NODE_COPY_FROM));

      SVN_ERR(svn_sqlite__bindf(stmt, "issdst",
                    src_wcroot->wc_id, src_relpath,
                    dst_relpath,
                    dst_op_depth,
                    dst_parent_relpath,
                    presence_map, dst_presence));

      if (move_op_depth > 0)
        {
          if (relpath_depth(dst_relpath) == move_op_depth)
            {






              if (!(status == 135 ||
                    (status == 134 && op_root)))
                SVN_ERR(svn_sqlite__bind_int(stmt, 7, 1));
            }
          else
            {
              svn_sqlite__stmt_t *info_stmt;
              svn_boolean_t have_row;







              SVN_ERR(svn_sqlite__get_statement(&info_stmt, dst_wcroot->sdb,
                                                STMT_SELECT_NODE_INFO));
              SVN_ERR(svn_sqlite__bindf(info_stmt, "is", dst_wcroot->wc_id,
                                        dst_parent_relpath));
              SVN_ERR(svn_sqlite__step(&have_row, info_stmt));
              SVN_ERR_ASSERT(have_row);
              if (svn_sqlite__column_boolean(info_stmt, 15) &&
                  dst_op_depth == dst_parent_op_depth)
                {
                  SVN_ERR(svn_sqlite__bind_int(stmt, 7, 1));
                  SVN_ERR(svn_sqlite__reset(info_stmt));
                }
              else
                {
                  SVN_ERR(svn_sqlite__reset(info_stmt));



                  SVN_ERR(svn_sqlite__get_statement(&info_stmt,
                                                    dst_wcroot->sdb,
                                                    STMT_SELECT_NODE_INFO));
                  SVN_ERR(svn_sqlite__bindf(info_stmt, "is",
                                            dst_wcroot->wc_id, src_relpath));
                  SVN_ERR(svn_sqlite__step(&have_row, info_stmt));
                  SVN_ERR_ASSERT(have_row);
                  if (svn_sqlite__column_boolean(info_stmt, 15))
                    SVN_ERR(svn_sqlite__bind_int(stmt, 7, 1));
                  SVN_ERR(svn_sqlite__reset(info_stmt));
                }
            }
        }

      SVN_ERR(svn_sqlite__step_done(stmt));


      SVN_ERR(copy_actual(src_wcroot, src_relpath,
                          dst_wcroot, dst_relpath, scratch_pool));

      if (dst_np_op_depth > 0)
        {





          SVN_ERR(svn_sqlite__get_statement(&stmt, dst_wcroot->sdb,
                                            STMT_INSERT_NODE));
          SVN_ERR(svn_sqlite__bindf(stmt, "isdsisrtnt",
                                    src_wcroot->wc_id, dst_relpath,
                                    dst_np_op_depth, dst_parent_relpath,
                                    copyfrom_id, copyfrom_relpath,
                                    copyfrom_rev,
                                    presence_map,
                                       129,

                                    kind_map, kind));

          SVN_ERR(svn_sqlite__step_done(stmt));
        }




      if (kind == svn_node_dir
          && dst_presence == 130)
        SVN_ERR(insert_incomplete_children(
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
      SVN_ERR(cross_db_copy(src_wcroot, src_relpath, dst_wcroot,
                            dst_relpath, dst_presence, dst_op_depth,
                            dst_np_op_depth, kind,
                            children, copyfrom_id, copyfrom_relpath,
                            copyfrom_rev, scratch_pool));
    }

  SVN_ERR(add_work_items(dst_wcroot->sdb, work_items, scratch_pool));

  return SVN_NO_ERROR;
}
