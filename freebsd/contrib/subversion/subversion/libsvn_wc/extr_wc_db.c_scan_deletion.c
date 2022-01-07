
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int STMT_SELECT_DELETION_INFO ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_WC_PATH_NOT_FOUND ;
 int SVN_ERR_WC_PATH_UNEXPECTED_STATUS ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 char* apr_pstrdup (int *,char const*) ;
 int * get_moved_to (char const**,char const**,int*,int *,char const*,TYPE_1__*,char const*,int *,int *) ;
 int path_for_error_message (TYPE_1__*,char const*,int *) ;
 int presence_map ;
 int relpath_depth (char const*) ;
 int * svn_error_createf (int ,int ,int ,int ) ;
 int * svn_error_trace (int *) ;
 char* svn_relpath_dirname (char const*,int *) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*) ;
 int svn_sqlite__column_int (int *,int) ;
 int svn_sqlite__column_is_null (int *,int ) ;
 scalar_t__ svn_sqlite__column_token (int *,int,int ) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (int*,int *) ;
 scalar_t__ svn_wc__db_status_base_deleted ;
 scalar_t__ svn_wc__db_status_not_present ;

__attribute__((used)) static svn_error_t *
scan_deletion(const char **base_del_relpath,
              const char **moved_to_relpath,
              const char **work_del_relpath,
              const char **moved_to_op_root_relpath,
              svn_wc__db_wcroot_t *wcroot,
              const char *local_relpath,
              apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  const char *current_relpath = local_relpath;
  svn_sqlite__stmt_t *stmt;
  svn_wc__db_status_t work_presence;
  svn_boolean_t have_row, scan, have_base;
  int op_depth;


  if (base_del_relpath != ((void*)0))
    *base_del_relpath = ((void*)0);
  if (moved_to_relpath != ((void*)0))
    *moved_to_relpath = ((void*)0);
  if (work_del_relpath != ((void*)0))
    *work_del_relpath = ((void*)0);
  if (moved_to_op_root_relpath != ((void*)0))
    *moved_to_op_root_relpath = ((void*)0);




  scan = (moved_to_op_root_relpath || moved_to_relpath);

  SVN_ERR(svn_sqlite__get_statement(
                    &stmt, wcroot->sdb, STMT_SELECT_DELETION_INFO));

  SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, current_relpath));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));
  if (!have_row)
    return svn_error_createf(SVN_ERR_WC_PATH_NOT_FOUND, svn_sqlite__reset(stmt),
                             _("The node '%s' was not found."),
                             path_for_error_message(wcroot, local_relpath,
                                                    scratch_pool));

  work_presence = svn_sqlite__column_token(stmt, 1, presence_map);
  have_base = !svn_sqlite__column_is_null(stmt, 0);
  if (work_presence != svn_wc__db_status_not_present
      && work_presence != svn_wc__db_status_base_deleted)
    return svn_error_createf(SVN_ERR_WC_PATH_UNEXPECTED_STATUS,
                             svn_sqlite__reset(stmt),
                             _("Expected node '%s' to be deleted."),
                             path_for_error_message(wcroot, local_relpath,
                                                    scratch_pool));

  op_depth = svn_sqlite__column_int(stmt, 2);





  if (work_presence == svn_wc__db_status_not_present
      && work_del_relpath && !*work_del_relpath)
    {
      *work_del_relpath = apr_pstrdup(result_pool, current_relpath);

      if (!scan && !base_del_relpath)
        {

          SVN_ERR(svn_sqlite__reset(stmt));
          return SVN_NO_ERROR;
        }
    }


  while (TRUE)
    {
      svn_error_t *err;
      const char *parent_relpath;
      int current_depth = relpath_depth(current_relpath);



      while (TRUE)
        {
          if (scan)
            {
              err = get_moved_to(moved_to_relpath, moved_to_op_root_relpath,
                                 &scan, stmt, current_relpath,
                                 wcroot, local_relpath,
                                 result_pool, scratch_pool);
              if (err || (!scan
                          && !base_del_relpath
                          && !work_del_relpath))
                {

                  SVN_ERR(svn_sqlite__reset(stmt));
                  return svn_error_trace(err);
                }
            }

          if (current_depth <= op_depth)
            break;

          current_relpath = svn_relpath_dirname(current_relpath, scratch_pool);
          --current_depth;

          if (scan || current_depth == op_depth)
            {
              SVN_ERR(svn_sqlite__reset(stmt));
              SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id,
                                        current_relpath));
              SVN_ERR(svn_sqlite__step(&have_row, stmt));
              SVN_ERR_ASSERT(have_row);
              have_base = !svn_sqlite__column_is_null(stmt, 0);
            }
        }
      SVN_ERR(svn_sqlite__reset(stmt));



      SVN_ERR_ASSERT(current_relpath[0] != '\0');
      parent_relpath = svn_relpath_dirname(current_relpath, scratch_pool);
      SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, parent_relpath));
      SVN_ERR(svn_sqlite__step(&have_row, stmt));
      if (!have_row)
        {



          if (have_base && base_del_relpath)
            *base_del_relpath = apr_pstrdup(result_pool, current_relpath);
          break;
        }



      if (work_del_relpath && !*work_del_relpath)
        {
          *work_del_relpath = apr_pstrdup(result_pool, current_relpath);

          if (!scan && !base_del_relpath)
            break;
        }

      current_relpath = parent_relpath;
      op_depth = svn_sqlite__column_int(stmt, 2);
      have_base = !svn_sqlite__column_is_null(stmt, 0);
    }

  SVN_ERR(svn_sqlite__reset(stmt));

  return SVN_NO_ERROR;
}
