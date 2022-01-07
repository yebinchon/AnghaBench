
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_2__ ;
typedef struct TYPE_35__ TYPE_1__ ;


struct TYPE_35__ {int sdb; int wc_id; int abspath; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_skel_t ;
typedef int svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_36__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct insert_base_baton_t {char const* repos_relpath; int * target; int * checksum; int depth; int * children; int revision; scalar_t__ kind; int status; int repos_id; } ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 scalar_t__ FALSE ;
 int STMT_DELETE_ACTUAL_FOR_BASE_RECURSIVE ;
 int STMT_DELETE_ACTUAL_NODE_RECURSIVE ;
 int STMT_DELETE_BASE_RECURSIVE ;
 int STMT_DELETE_WORKING_BASE_DELETE_RECURSIVE ;
 int STMT_DELETE_WORKING_RECURSIVE ;
 int STMT_SELECT_MOVED_DESCENDANTS_SRC ;
 int STMT_SELECT_MOVED_OUTSIDE ;
 int STMT_SELECT_NODE_INFO ;
 int STMT_SELECT_WORKING_PRESENT ;
 int SVN_ERR (TYPE_2__*) ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 TYPE_2__* SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 TYPE_2__* add_work_items (int ,int *,int *) ;
 int blank_ibb (struct insert_base_baton_t*) ;
 TYPE_2__* clear_moved_here (TYPE_1__*,char const*,int *) ;
 TYPE_2__* db_retract_parent_delete (TYPE_1__*,char const*,int ,int *) ;
 TYPE_2__* insert_base_node (struct insert_base_baton_t*,TYPE_1__*,char const*,int *) ;
 int kind_map ;
 int presence_map ;
 int relpath_depth (char const*) ;
 int svn_depth_unknown ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_compose_create (TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 scalar_t__ svn_node_dir ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 char* svn_relpath_join (char const*,char const*,int *) ;
 int svn_relpath_split (char const**,char const**,char const*,int *) ;
 TYPE_2__* svn_sqlite__bindf (int *,char*,int ,char const*,...) ;
 int svn_sqlite__column_int (int *,int ) ;
 char* svn_sqlite__column_text (int *,int,int *) ;
 scalar_t__ svn_sqlite__column_token (int *,int,int ) ;
 TYPE_2__* svn_sqlite__get_statement (int **,int ,int ) ;
 TYPE_2__* svn_sqlite__reset (int *) ;
 TYPE_2__* svn_sqlite__step (scalar_t__*,int *) ;
 TYPE_2__* svn_sqlite__step_done (int *) ;
 TYPE_2__* svn_wc__db_base_get_info_internal (scalar_t__*,scalar_t__*,int *,char const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,scalar_t__*,TYPE_1__*,char const*,int *,int *) ;
 TYPE_2__* svn_wc__db_mark_conflict_internal (TYPE_1__*,char const*,int *,int *) ;
 TYPE_2__* svn_wc__db_op_break_move_internal (TYPE_1__*,char const*,int,char const*,int *,int *) ;
 TYPE_2__* svn_wc__db_op_make_copy_internal (TYPE_1__*,char const*,scalar_t__,int *,int *,int *) ;
 scalar_t__ svn_wc__db_status_base_deleted ;
 int svn_wc__db_status_excluded ;
 scalar_t__ svn_wc__db_status_incomplete ;
 scalar_t__ svn_wc__db_status_normal ;
 int svn_wc__db_status_not_present ;
 TYPE_2__* svn_wc__wq_build_dir_remove (int **,int *,int ,char const*,scalar_t__,int *,int *) ;
 TYPE_2__* svn_wc__wq_build_file_remove (int **,int *,int ,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
db_base_remove(svn_wc__db_wcroot_t *wcroot,
               const char *local_relpath,
               svn_wc__db_t *db,
               svn_boolean_t keep_as_working,
               svn_boolean_t mark_not_present,
               svn_boolean_t mark_excluded,
               svn_revnum_t marker_revision,
               svn_skel_t *conflict,
               svn_skel_t *work_items,
               apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  svn_wc__db_status_t status;
  svn_revnum_t revision;
  apr_int64_t repos_id;
  const char *repos_relpath;
  svn_node_kind_t kind;
  svn_boolean_t keep_working;
  int op_depth;
  svn_node_kind_t wrk_kind;
  svn_boolean_t no_delete_wc = FALSE;
  svn_boolean_t file_external;

  SVN_ERR(svn_wc__db_base_get_info_internal(&status, &kind, &revision,
                                            &repos_relpath, &repos_id,
                                            ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                            ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                            &file_external,
                                            wcroot, local_relpath,
                                            scratch_pool, scratch_pool));


  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_NODE_INFO));
  SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));

  if (!have_row)
    return svn_error_trace(svn_sqlite__reset(stmt));

  op_depth = svn_sqlite__column_int(stmt, 0);
  wrk_kind = svn_sqlite__column_token(stmt, 4, kind_map);

  if (op_depth > 0
      && op_depth == relpath_depth(local_relpath))
    {
      svn_wc__db_status_t presence;
      presence = svn_sqlite__column_token(stmt, 3, presence_map);

      if (presence == svn_wc__db_status_base_deleted)
        {
          keep_working = FALSE;
          no_delete_wc = TRUE;
        }
      else
        {
          keep_working = TRUE;
        }
    }
  else
    keep_working = FALSE;
  SVN_ERR(svn_sqlite__reset(stmt));

  if (keep_as_working && op_depth == 0)
    {
      if (status == svn_wc__db_status_normal
          || status == svn_wc__db_status_incomplete)
        {
          SVN_ERR(svn_wc__db_op_make_copy_internal(wcroot, local_relpath, TRUE,
                                                   ((void*)0), ((void*)0),
                                                   scratch_pool));
        }
      keep_working = TRUE;
    }



  if (!keep_working && !no_delete_wc)
    {
      svn_skel_t *work_item;
      const char *local_abspath;

      local_abspath = svn_dirent_join(wcroot->abspath, local_relpath,
                                      scratch_pool);
      if (wrk_kind == svn_node_dir)
        {
          apr_pool_t *iterpool;
          SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                            STMT_SELECT_WORKING_PRESENT));
          SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));

          iterpool = svn_pool_create(scratch_pool);

          SVN_ERR(svn_sqlite__step(&have_row, stmt));

          while (have_row)
            {
              const char *node_relpath = svn_sqlite__column_text(stmt, 0, ((void*)0));
              svn_node_kind_t node_kind = svn_sqlite__column_token(stmt, 1,
                                                              kind_map);
              const char *node_abspath;
              svn_error_t *err;

              svn_pool_clear(iterpool);

              node_abspath = svn_dirent_join(wcroot->abspath, node_relpath,
                                             iterpool);

              if (node_kind == svn_node_dir)
                err = svn_wc__wq_build_dir_remove(&work_item,
                                                  db, wcroot->abspath,
                                                  node_abspath, FALSE,
                                                  iterpool, iterpool);
              else
                err = svn_wc__wq_build_file_remove(&work_item,
                                                   db,
                                                   wcroot->abspath,
                                                   node_abspath,
                                                   iterpool, iterpool);

              if (!err)
                err = add_work_items(wcroot->sdb, work_item, iterpool);
              if (err)
                return svn_error_compose_create(err, svn_sqlite__reset(stmt));

              SVN_ERR(svn_sqlite__step(&have_row, stmt));
           }

          SVN_ERR(svn_sqlite__reset(stmt));

          SVN_ERR(svn_wc__wq_build_dir_remove(&work_item,
                                              db, wcroot->abspath,
                                              local_abspath, FALSE,
                                              scratch_pool, iterpool));
          svn_pool_destroy(iterpool);
        }
      else
        SVN_ERR(svn_wc__wq_build_file_remove(&work_item,
                                             db, wcroot->abspath,
                                             local_abspath,
                                             scratch_pool, scratch_pool));

      SVN_ERR(add_work_items(wcroot->sdb, work_item, scratch_pool));
    }


  if (! keep_working)
    {


      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                        STMT_DELETE_ACTUAL_NODE_RECURSIVE));
      SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
      SVN_ERR(svn_sqlite__step_done(stmt));
    }
  else if (! keep_as_working)
    {

      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                       STMT_DELETE_ACTUAL_FOR_BASE_RECURSIVE));
      SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
      SVN_ERR(svn_sqlite__step_done(stmt));
    }




  if (!keep_working)
    {
      apr_pool_t *iterpool;




      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                        STMT_SELECT_MOVED_OUTSIDE));
      SVN_ERR(svn_sqlite__bindf(stmt, "isd", wcroot->wc_id,
                                             local_relpath,
                                             relpath_depth(local_relpath)));
      SVN_ERR(svn_sqlite__step(&have_row, stmt));
      iterpool = svn_pool_create(scratch_pool);
      while (have_row)
        {
          const char *moved_to_relpath;
          svn_error_t *err;

          svn_pool_clear(iterpool);
          moved_to_relpath = svn_sqlite__column_text(stmt, 1, iterpool);
          err = clear_moved_here(wcroot, moved_to_relpath, iterpool);
          if (err)
            return svn_error_compose_create(err, svn_sqlite__reset(stmt));
          SVN_ERR(svn_sqlite__step(&have_row, stmt));
        }
      svn_pool_destroy(iterpool);
      SVN_ERR(svn_sqlite__reset(stmt));
    }
  else
    {




      apr_pool_t *iterpool;

      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                        STMT_SELECT_MOVED_DESCENDANTS_SRC));
      SVN_ERR(svn_sqlite__bindf(stmt, "isd", wcroot->wc_id,
                                local_relpath, 0));
      SVN_ERR(svn_sqlite__step(&have_row, stmt));
      iterpool = svn_pool_create(scratch_pool);
      while (have_row)
        {
          int delete_op_depth = svn_sqlite__column_int(stmt, 0);
          const char *src_relpath;
          const char *dst_relpath;
          svn_error_t *err;

          svn_pool_clear(iterpool);

          src_relpath = svn_sqlite__column_text(stmt, 1, iterpool);
          dst_relpath = svn_sqlite__column_text(stmt, 4, iterpool);

          err = svn_wc__db_op_break_move_internal(wcroot, src_relpath,
                                                  delete_op_depth,
                                                  dst_relpath,
                                                  ((void*)0),
                                                  iterpool);

          if (err)
            return svn_error_compose_create(err, svn_sqlite__reset(stmt));

          SVN_ERR(svn_sqlite__step(&have_row, stmt));
        }
      svn_pool_destroy(iterpool);
      SVN_ERR(svn_sqlite__reset(stmt));
    }
  if (keep_working)
    {
      SVN_ERR(svn_sqlite__get_statement(
                    &stmt, wcroot->sdb,
                    STMT_DELETE_WORKING_BASE_DELETE_RECURSIVE));
      SVN_ERR(svn_sqlite__bindf(stmt, "isd", wcroot->wc_id, local_relpath, 0));
      SVN_ERR(svn_sqlite__step_done(stmt));
    }
  else
    {
      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                        STMT_DELETE_WORKING_RECURSIVE));
      SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
      SVN_ERR(svn_sqlite__step_done(stmt));
    }


  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_DELETE_BASE_RECURSIVE));
  SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
  SVN_ERR(svn_sqlite__step_done(stmt));

  SVN_ERR(db_retract_parent_delete(wcroot, local_relpath, 0, scratch_pool));

  if (mark_not_present || mark_excluded)
    {
      struct insert_base_baton_t ibb;
      svn_boolean_t no_marker = FALSE;

      if (file_external)
        {
          const char *parent_local_relpath;
          const char *name;
          svn_error_t *err;




          svn_relpath_split(&parent_local_relpath, &name, local_relpath,
                            scratch_pool);

          err = svn_wc__db_base_get_info_internal(((void*)0), ((void*)0), ((void*)0),
                                                  &repos_relpath, &repos_id,
                                                  ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                                  ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                                  wcroot, parent_local_relpath,
                                                  scratch_pool, scratch_pool);

          if (err && err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
            return svn_error_trace(err);
          else if (err)
            {
              svn_error_clear(err);
              no_marker = TRUE;
            }
          else
            {



              repos_relpath = svn_relpath_join(repos_relpath, name, scratch_pool);
            }
        }

      if (!no_marker)
        {
          blank_ibb(&ibb);

          ibb.repos_id = repos_id;
          ibb.status = mark_excluded ? svn_wc__db_status_excluded
                                     : svn_wc__db_status_not_present;
          ibb.kind = kind;
          ibb.repos_relpath = repos_relpath;
          ibb.revision = SVN_IS_VALID_REVNUM(marker_revision)
                            ? marker_revision
                            : revision;


          ibb.children = ((void*)0);
          ibb.depth = svn_depth_unknown;
          ibb.checksum = ((void*)0);
          ibb.target = ((void*)0);

          SVN_ERR(insert_base_node(&ibb, wcroot, local_relpath, scratch_pool));
        }
    }

  SVN_ERR(add_work_items(wcroot->sdb, work_items, scratch_pool));
  if (conflict)
    SVN_ERR(svn_wc__db_mark_conflict_internal(wcroot, local_relpath,
                                              conflict, scratch_pool));

  return SVN_NO_ERROR;
}
