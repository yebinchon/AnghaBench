
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int sdb; int wc_id; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_skel_t ;
typedef void* svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int STMT_COPY_NODE_MOVE ;
 int STMT_DELETE_NODE ;
 int STMT_REPLACE_WITH_BASE_DELETED ;
 int STMT_SELECT_LAYER_FOR_REPLACE ;
 int STMT_SELECT_NO_LONGER_MOVED_RV ;
 int SVN_ERR (int *) ;
 int SVN_ERR_WC_NOT_LOCKED ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * add_work_items (int ,int *,int *) ;
 int * clear_or_remove_actual (TYPE_1__*,char const*,int,int *) ;
 int * db_extend_parent_delete (TYPE_1__*,char const*,void*,int,int *) ;
 int * db_retract_parent_delete (TYPE_1__*,char const*,int,int *) ;
 int kind_map ;
 int path_for_error_message (TYPE_1__*,char const*,int *) ;
 int presence_map ;
 int relpath_depth (char const*) ;
 int * svn_error_compose_create (int *,int ) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_relpath_dirname (char const*,int *) ;
 int * svn_sqlite__bindf (int *,char*,int ,char const*,int,...) ;
 int svn_sqlite__column_is_null (int *,int) ;
 char* svn_sqlite__column_text (int *,int,int *) ;
 void* svn_sqlite__column_token (int *,int,int ) ;
 int * svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int * svn_sqlite__step (int*,int *) ;
 int * svn_sqlite__step_done (int *) ;
 int * svn_wc__db_mark_conflict_internal (TYPE_1__*,char const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_incomplete ;
 scalar_t__ svn_wc__db_status_normal ;
 scalar_t__ svn_wc__db_status_not_present ;
 int * svn_wc__db_wclock_owns_lock_internal (int*,TYPE_1__*,char const*,int,int *) ;

svn_error_t *
svn_wc__db_op_copy_layer_internal(svn_wc__db_wcroot_t *wcroot,
                                  const char *src_op_relpath,
                                  int src_op_depth,
                                  const char *dst_op_relpath,
                                  svn_skel_t *conflict,
                                  svn_skel_t *work_items,
                                  apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt, *stmt2;
  svn_boolean_t have_row;
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);
  int dst_op_depth = relpath_depth(dst_op_relpath);
  svn_boolean_t locked;
  svn_error_t *err = ((void*)0);

  SVN_ERR(svn_wc__db_wclock_owns_lock_internal(&locked, wcroot, dst_op_relpath,
                                               FALSE, scratch_pool));

  if (!locked)
    return svn_error_createf(SVN_ERR_WC_NOT_LOCKED, ((void*)0),
                             _("No write-lock in '%s'"),
                             path_for_error_message(wcroot, dst_op_relpath,
                                                    scratch_pool));

  SVN_ERR(svn_sqlite__get_statement(&stmt2, wcroot->sdb,
                                    STMT_COPY_NODE_MOVE));


  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_LAYER_FOR_REPLACE));
  SVN_ERR(svn_sqlite__bindf(stmt, "isdsd", wcroot->wc_id,
                            src_op_relpath, src_op_depth,
                            dst_op_relpath, dst_op_depth));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));
  while (have_row)
    {
      const char *src_relpath;
      const char *dst_relpath;

      svn_pool_clear(iterpool);

      src_relpath = svn_sqlite__column_text(stmt, 0, iterpool);
      dst_relpath = svn_sqlite__column_text(stmt, 2, iterpool);

      err = svn_sqlite__bindf(stmt2, "isdsds", wcroot->wc_id,
                              src_relpath, src_op_depth,
                              dst_relpath, dst_op_depth,
                              svn_relpath_dirname(dst_relpath, iterpool));
      if (!err)
        err = svn_sqlite__step_done(stmt2);



      if (err)
        break;



      if (relpath_depth(dst_relpath) > (dst_op_depth+1))
        {
          svn_boolean_t exists = !svn_sqlite__column_is_null(stmt, 3);

          if (exists)
            {
              svn_wc__db_status_t presence;

              presence = svn_sqlite__column_token(stmt, 3, presence_map);

              if (presence != svn_wc__db_status_normal)
                exists = FALSE;
            }

          if (!exists)
            {
              svn_node_kind_t kind = svn_sqlite__column_token(stmt, 1, kind_map);

              err = db_extend_parent_delete(wcroot, dst_relpath,
                                            kind, dst_op_depth, iterpool);

              if (err)
                break;
            }
        }

      SVN_ERR(svn_sqlite__step(&have_row, stmt));
    }

  SVN_ERR(svn_error_compose_create(err, svn_sqlite__reset(stmt)));


  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_NO_LONGER_MOVED_RV));
  SVN_ERR(svn_sqlite__bindf(stmt, "isdsd", wcroot->wc_id,
                            dst_op_relpath, dst_op_depth,
                            src_op_relpath, src_op_depth));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));
  while (have_row)
    {
      const char *dst_relpath;
      svn_wc__db_status_t shadowed_presence;

      svn_pool_clear(iterpool);

      dst_relpath = svn_sqlite__column_text(stmt, 0, iterpool);

      if (!svn_sqlite__column_is_null(stmt, 2))
        shadowed_presence = svn_sqlite__column_token(stmt, 2, presence_map);
      else
        shadowed_presence = svn_wc__db_status_not_present;

      if (shadowed_presence != svn_wc__db_status_normal
          && shadowed_presence != svn_wc__db_status_incomplete)
        {
          err = svn_sqlite__get_statement(&stmt2, wcroot->sdb,
                                            STMT_DELETE_NODE);
        }
      else
        {
          err =svn_sqlite__get_statement(&stmt2, wcroot->sdb,
                                         STMT_REPLACE_WITH_BASE_DELETED);
        }

      if (!err)
        err = svn_sqlite__bindf(stmt2, "isd", wcroot->wc_id, dst_relpath,
                                             dst_op_depth);

      if (!err)
        err = svn_sqlite__step_done(stmt2);


      if (err)
        break;


      err = clear_or_remove_actual(wcroot, dst_relpath, dst_op_depth,
                                   scratch_pool);

      if (err)
        break;


      err = db_retract_parent_delete(wcroot, dst_relpath, dst_op_depth,
                                     scratch_pool);

      if (err)
        break;

      SVN_ERR(svn_sqlite__step(&have_row, stmt));
    }
  svn_pool_destroy(iterpool);

  SVN_ERR(svn_error_compose_create(err, svn_sqlite__reset(stmt)));

  SVN_ERR(add_work_items(wcroot->sdb, work_items, scratch_pool));

  if (conflict)
    SVN_ERR(svn_wc__db_mark_conflict_internal(wcroot, dst_op_relpath ,
                                              conflict, scratch_pool));

  return SVN_NO_ERROR;
}
