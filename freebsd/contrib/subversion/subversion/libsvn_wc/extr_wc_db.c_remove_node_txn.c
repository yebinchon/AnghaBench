
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int sdb; int wc_id; int abspath; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_sqlite__stmt_t ;
typedef int const svn_skel_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_8__ {scalar_t__ kind; scalar_t__ filesize; scalar_t__ mtime; } ;
typedef TYPE_2__ svn_io_dirent2_t ;
typedef scalar_t__ svn_filesize_t ;
typedef int svn_error_t ;
typedef int * (* svn_cancel_func_t ) (void*) ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;


 int FALSE ;
 int STMT_DELETE_ACTUAL_NODE_RECURSIVE ;
 int STMT_DELETE_NODE_ALL_LAYERS ;
 int STMT_DELETE_NODE_RECURSIVE ;
 int STMT_SELECT_WORKING_PRESENT ;
 int SVN_ERR (int *) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int * add_work_items (int ,int const*,int *) ;
 scalar_t__ get_recorded_size (int *,int) ;
 int kind_map ;
 int * read_info (scalar_t__*,scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,TYPE_1__*,char const*,int *,int *) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int * svn_error_compose_create (int *,int ) ;
 int * svn_io_stat_dirent2 (TYPE_2__ const**,char const*,int,int,int *,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_sqlite__bindf (int *,char*,int ,char const*) ;
 scalar_t__ svn_sqlite__column_int64 (int *,int) ;
 int svn_sqlite__column_is_null (int *,int) ;
 char* svn_sqlite__column_text (int *,int ,int *) ;
 scalar_t__ svn_sqlite__column_token (int *,int,int ) ;
 int * svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int * svn_sqlite__step (int*,int *) ;
 int * svn_sqlite__step_done (int *) ;
 int * svn_wc__db_mark_conflict_internal (TYPE_1__*,char const*,int const*,int *) ;
 scalar_t__ svn_wc__db_status_added ;
 scalar_t__ svn_wc__db_status_incomplete ;
 scalar_t__ svn_wc__db_status_normal ;
 int * svn_wc__internal_file_modified_p (int*,int *,char const*,int,int *) ;
 int * svn_wc__wq_build_dir_remove (int const**,int *,int ,char const*,int,int *,int *) ;
 int * svn_wc__wq_build_file_remove (int const**,int *,int ,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
remove_node_txn(svn_boolean_t *left_changes,
                svn_wc__db_wcroot_t *wcroot,
                const char *local_relpath,
                svn_wc__db_t *db,
                svn_boolean_t destroy_wc,
                svn_boolean_t destroy_changes,
                const svn_skel_t *conflict,
                const svn_skel_t *work_items,
                svn_cancel_func_t cancel_func,
                void *cancel_baton,
                apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;





  SVN_ERR_ASSERT(!destroy_wc || db != ((void*)0));

  if (left_changes)
    *left_changes = FALSE;

  if (destroy_wc
      && (!destroy_changes || *local_relpath == '\0'))
    {
      svn_boolean_t have_row;
      apr_pool_t *iterpool;
      svn_error_t *err = ((void*)0);


      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                        STMT_SELECT_WORKING_PRESENT));
      SVN_ERR(svn_sqlite__bindf(stmt, "is",
                                wcroot->wc_id, local_relpath));

      SVN_ERR(svn_sqlite__step(&have_row, stmt));

      iterpool = svn_pool_create(scratch_pool);

      while (have_row)
        {
          const char *child_relpath;
          const char *child_abspath;
          svn_node_kind_t child_kind;
          svn_boolean_t have_checksum;
          svn_filesize_t recorded_size;
          apr_int64_t recorded_time;
          const svn_io_dirent2_t *dirent;
          svn_boolean_t modified_p = TRUE;
          svn_skel_t *work_item = ((void*)0);

          svn_pool_clear(iterpool);

          child_relpath = svn_sqlite__column_text(stmt, 0, ((void*)0));
          child_kind = svn_sqlite__column_token(stmt, 1, kind_map);

          child_abspath = svn_dirent_join(wcroot->abspath, child_relpath,
                                          iterpool);

          if (child_kind == svn_node_file)
            {
              have_checksum = !svn_sqlite__column_is_null(stmt, 2);
              recorded_size = get_recorded_size(stmt, 3);
              recorded_time = svn_sqlite__column_int64(stmt, 4);
            }

          if (cancel_func)
            err = cancel_func(cancel_baton);

          if (err)
            break;

          err = svn_io_stat_dirent2(&dirent, child_abspath, FALSE, TRUE,
                                    iterpool, iterpool);

          if (err)
            break;

          if (destroy_changes
              || dirent->kind != svn_node_file
              || child_kind != svn_node_file)
            {

              modified_p = FALSE;
            }
          else if (child_kind == svn_node_file
                   && dirent->kind == svn_node_file
                   && dirent->filesize == recorded_size
                   && dirent->mtime == recorded_time)
            {
              modified_p = FALSE;
            }
          else if (have_checksum)
            err = svn_wc__internal_file_modified_p(&modified_p,
                                                   db, child_abspath,
                                                   FALSE, iterpool);

          if (err)
            break;

          if (modified_p)
            {
              if (left_changes)
                *left_changes = TRUE;
            }
          else if (child_kind == svn_node_dir)
            {
              err = svn_wc__wq_build_dir_remove(&work_item,
                                                db, wcroot->abspath,
                                                child_abspath, FALSE,
                                                iterpool, iterpool);
            }
          else
            {
              err = svn_wc__wq_build_file_remove(&work_item,
                                                 db, wcroot->abspath,
                                                 child_abspath,
                                                 iterpool, iterpool);
            }

          if (err)
            break;

          if (work_item)
            {
              err = add_work_items(wcroot->sdb, work_item, iterpool);
              if (err)
                break;
            }

          SVN_ERR(svn_sqlite__step(&have_row, stmt));
        }
      svn_pool_destroy(iterpool);

      SVN_ERR(svn_error_compose_create(err, svn_sqlite__reset(stmt)));
    }

  if (destroy_wc && *local_relpath != '\0')
    {

      svn_wc__db_status_t status;
      svn_node_kind_t kind;
      SVN_ERR(read_info(&status, &kind, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                        ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                        ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                        wcroot, local_relpath,
                        scratch_pool, scratch_pool));

      if (status == svn_wc__db_status_normal
          || status == svn_wc__db_status_added
          || status == svn_wc__db_status_incomplete)
        {
          svn_skel_t *work_item = ((void*)0);
          const char *local_abspath = svn_dirent_join(wcroot->abspath,
                                                          local_relpath,
                                                          scratch_pool);

          if (kind == svn_node_dir)
            {
              SVN_ERR(svn_wc__wq_build_dir_remove(&work_item,
                                                  db, wcroot->abspath,
                                                  local_abspath,
                                                  destroy_changes
                                                                     ,
                                                  scratch_pool, scratch_pool));
            }
          else
            {
              svn_boolean_t modified_p = FALSE;

              if (!destroy_changes)
                {
                  SVN_ERR(svn_wc__internal_file_modified_p(&modified_p,
                                                           db, local_abspath,
                                                           FALSE,
                                                           scratch_pool));
                }

              if (!modified_p)
                SVN_ERR(svn_wc__wq_build_file_remove(&work_item,
                                                     db, wcroot->abspath,
                                                     local_abspath,
                                                     scratch_pool,
                                                     scratch_pool));
              else
                {
                  if (left_changes)
                    *left_changes = TRUE;
                }
            }

          SVN_ERR(add_work_items(wcroot->sdb, work_item, scratch_pool));
        }
    }


  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_DELETE_NODE_RECURSIVE));
  SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
  SVN_ERR(svn_sqlite__step_done(stmt));


  if (local_relpath[0] != '\0')
    {
      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                        STMT_DELETE_NODE_ALL_LAYERS));
      SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
      SVN_ERR(svn_sqlite__step_done(stmt));
    }

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_DELETE_ACTUAL_NODE_RECURSIVE));


  SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id,
                                         local_relpath));
  SVN_ERR(svn_sqlite__step_done(stmt));

  SVN_ERR(add_work_items(wcroot->sdb, work_items, scratch_pool));
  if (conflict)
    SVN_ERR(svn_wc__db_mark_conflict_internal(wcroot, local_relpath,
                                              conflict, scratch_pool));

  return SVN_NO_ERROR;
}
