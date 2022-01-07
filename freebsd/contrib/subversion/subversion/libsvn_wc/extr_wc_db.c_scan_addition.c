
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_sqlite__stmt_t ;
typedef scalar_t__ svn_revnum_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;


 scalar_t__ INVALID_REPOS_ID ;
 int STMT_SELECT_WORKING_NODE ;
 int SVN_ERR (int *) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_WC_PATH_NOT_FOUND ;
 int SVN_ERR_WC_PATH_UNEXPECTED_STATUS ;
 scalar_t__ SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 char* apr_pstrdup (int *,char const*) ;
 int * get_moved_from_info (char const**,char const**,char const*,int*,TYPE_1__*,char const*,int *,int *) ;
 int path_for_error_message (TYPE_1__*,char const*,int *) ;
 int presence_map ;
 int * svn_error_compose_create (int *,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 char const* svn_relpath_basename (char const*,int *) ;
 char* svn_relpath_dirname (char const*,int *) ;
 char* svn_relpath_join (char const*,char const*,int *) ;
 char* svn_relpath_prefix (char const*,int,int *) ;
 char const* svn_relpath_skip_ancestor (char const*,char const*) ;
 int * svn_sqlite__bindf (int *,char*,int ,char const*) ;
 scalar_t__ svn_sqlite__column_boolean (int *,int) ;
 int svn_sqlite__column_int (int *,int ) ;
 scalar_t__ svn_sqlite__column_int64 (int *,int) ;
 int svn_sqlite__column_is_null (int *,int) ;
 scalar_t__ svn_sqlite__column_revnum (int *,int) ;
 char* svn_sqlite__column_text (int *,int,int *) ;
 scalar_t__ svn_sqlite__column_token (int *,int,int ) ;
 int * svn_sqlite__get_statement (int **,int ,int ) ;
 int * svn_sqlite__reset (int *) ;
 int * svn_sqlite__step (scalar_t__*,int *) ;
 int * svn_wc__db_base_get_info_internal (int *,int *,int *,char const**,scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,TYPE_1__*,char const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_added ;
 scalar_t__ svn_wc__db_status_copied ;
 scalar_t__ svn_wc__db_status_incomplete ;
 scalar_t__ svn_wc__db_status_moved_here ;
 scalar_t__ svn_wc__db_status_normal ;

__attribute__((used)) static svn_error_t *
scan_addition(svn_wc__db_status_t *status,
              const char **op_root_relpath_p,
              const char **repos_relpath,
              apr_int64_t *repos_id,
              const char **original_repos_relpath,
              apr_int64_t *original_repos_id,
              svn_revnum_t *original_revision,
              const char **moved_from_relpath,
              const char **moved_from_op_root_relpath,
              int *moved_from_op_depth,
              svn_wc__db_wcroot_t *wcroot,
              const char *local_relpath,
              apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  const char *op_root_relpath;
  const char *build_relpath = "";





  if (op_root_relpath_p)
    *op_root_relpath_p = ((void*)0);
  if (original_repos_relpath)
    *original_repos_relpath = ((void*)0);
  if (original_repos_id)
    *original_repos_id = INVALID_REPOS_ID;
  if (original_revision)
    *original_revision = SVN_INVALID_REVNUM;
  if (moved_from_relpath)
    *moved_from_relpath = ((void*)0);
  if (moved_from_op_root_relpath)
    *moved_from_op_root_relpath = ((void*)0);
  if (moved_from_op_depth)
    *moved_from_op_depth = 0;

  {
    svn_sqlite__stmt_t *stmt;
    svn_boolean_t have_row;
    svn_wc__db_status_t presence;
    int op_depth;
    const char *repos_prefix_path;


    SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                      STMT_SELECT_WORKING_NODE));
    SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
    SVN_ERR(svn_sqlite__step(&have_row, stmt));

    if (!have_row)
      {

        SVN_ERR(svn_sqlite__reset(stmt));


        return svn_error_createf(SVN_ERR_WC_PATH_NOT_FOUND, ((void*)0),
                                 _("The node '%s' was not found."),
                                 path_for_error_message(wcroot,
                                                        local_relpath,
                                                        scratch_pool));
      }

    presence = svn_sqlite__column_token(stmt, 1, presence_map);


    op_depth = svn_sqlite__column_int(stmt, 0);
    if (op_depth == 0 || (presence != svn_wc__db_status_normal
                          && presence != svn_wc__db_status_incomplete))

      return svn_error_createf(SVN_ERR_WC_PATH_UNEXPECTED_STATUS,
                               svn_sqlite__reset(stmt),
                               _("Expected node '%s' to be added."),
                               path_for_error_message(wcroot,
                                                      local_relpath,
                                                      scratch_pool));

    if (original_revision)
      *original_revision = svn_sqlite__column_revnum(stmt, 12);


    if (status)
      {
        if (presence == svn_wc__db_status_normal)
          *status = svn_wc__db_status_added;
        else
          *status = svn_wc__db_status_incomplete;
      }



    op_root_relpath = svn_relpath_prefix(local_relpath, op_depth,
                                         scratch_pool);
    repos_prefix_path = svn_relpath_skip_ancestor(op_root_relpath,
                                                  local_relpath);

    if (op_root_relpath_p)
      *op_root_relpath_p = apr_pstrdup(result_pool, op_root_relpath);





    if (original_repos_relpath
        || original_repos_id
        || (original_revision
                && *original_revision == SVN_INVALID_REVNUM)
        || status
        || moved_from_relpath || moved_from_op_root_relpath)
      {
        if (local_relpath != op_root_relpath)

          {
            SVN_ERR(svn_sqlite__reset(stmt));

            SVN_ERR(svn_sqlite__bindf(stmt, "is",
                                      wcroot->wc_id, op_root_relpath));
            SVN_ERR(svn_sqlite__step(&have_row, stmt));

            if (!have_row)
              {

                SVN_ERR(svn_sqlite__reset(stmt));


                return svn_error_createf(SVN_ERR_WC_PATH_NOT_FOUND, ((void*)0),
                                         _("The node '%s' was not found."),
                                         path_for_error_message(wcroot,
                                                                op_root_relpath,
                                                                scratch_pool));
              }

            if (original_revision
                    && *original_revision == SVN_INVALID_REVNUM)
              *original_revision = svn_sqlite__column_revnum(stmt, 12);
          }

        if (original_repos_relpath)
          *original_repos_relpath = svn_sqlite__column_text(stmt, 11,
                                                            result_pool);

        if (!svn_sqlite__column_is_null(stmt, 10)
            && (status
                || original_repos_id
                || moved_from_relpath || moved_from_op_root_relpath))


          {
            svn_boolean_t moved_here;
            if (original_repos_id)
              *original_repos_id = svn_sqlite__column_int64(stmt, 10);

            moved_here = svn_sqlite__column_boolean(stmt, 13 );
            if (status)
              *status = moved_here ? svn_wc__db_status_moved_here
                                   : svn_wc__db_status_copied;

            if (moved_here
                && (moved_from_relpath || moved_from_op_root_relpath))
              {
                svn_error_t *err;

                err = get_moved_from_info(moved_from_relpath,
                                          moved_from_op_root_relpath,
                                          op_root_relpath,
                                          moved_from_op_depth,
                                          wcroot, local_relpath,
                                          result_pool,
                                          scratch_pool);

                if (err)
                  return svn_error_compose_create(
                                err, svn_sqlite__reset(stmt));
              }
          }
      }






    if (repos_relpath || repos_id)
      {
        const char *base_relpath;

        while (TRUE)
          {
            const char *tmp;

            SVN_ERR(svn_sqlite__reset(stmt));


            repos_prefix_path =
                svn_relpath_join(svn_relpath_basename(op_root_relpath, ((void*)0)),
                                 repos_prefix_path,
                                 scratch_pool);
            op_root_relpath = svn_relpath_dirname(op_root_relpath, scratch_pool);


            SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, op_root_relpath));
            SVN_ERR(svn_sqlite__step(&have_row, stmt));

            if (! have_row)
              break;

            op_depth = svn_sqlite__column_int(stmt, 0);


            tmp = op_root_relpath;

            op_root_relpath = svn_relpath_prefix(op_root_relpath, op_depth,
                                                 scratch_pool);
            repos_prefix_path = svn_relpath_join(
                                                 svn_relpath_skip_ancestor(op_root_relpath, tmp),
                                                 repos_prefix_path, scratch_pool);
          }

      SVN_ERR(svn_sqlite__reset(stmt));

      build_relpath = repos_prefix_path;





      SVN_ERR(svn_wc__db_base_get_info_internal(((void*)0), ((void*)0), ((void*)0),
                                                &base_relpath, repos_id,
                                                ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                                ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                                wcroot, op_root_relpath,
                                                scratch_pool, scratch_pool));

        if (repos_relpath)
          *repos_relpath = svn_relpath_join(base_relpath, build_relpath,
                                            result_pool);
      }
    else
      SVN_ERR(svn_sqlite__reset(stmt));
  }
  return SVN_NO_ERROR;
}
