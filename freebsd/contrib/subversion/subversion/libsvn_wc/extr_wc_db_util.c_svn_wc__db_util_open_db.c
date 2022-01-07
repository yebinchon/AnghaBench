
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_sqlite__mode_t ;
typedef int svn_sqlite__db_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_int32_t ;


 int APR_ENOENT ;
 int STMT_PRAGMA_LOCKING_MODE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int relpath_depth_sqlite ;
 char const* const* statements ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 scalar_t__ svn_node_file ;
 int svn_sqlite__create_scalar_function (int *,char*,int,int ,int ,int *) ;
 int svn_sqlite__exec_statements (int *,int ) ;
 int svn_sqlite__mode_rwcreate ;
 int svn_sqlite__open (int **,char const*,int ,char const* const*,int ,int *,int ,int *,int *) ;
 char* svn_wc__adm_child (char const*,char const*,int *) ;

svn_error_t *
svn_wc__db_util_open_db(svn_sqlite__db_t **sdb,
                        const char *dir_abspath,
                        const char *sdb_fname,
                        svn_sqlite__mode_t smode,
                        svn_boolean_t exclusive,
                        apr_int32_t timeout,
                        const char *const *my_statements,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  const char *sdb_abspath = svn_wc__adm_child(dir_abspath, sdb_fname,
                                              scratch_pool);

  if (smode != svn_sqlite__mode_rwcreate)
    {
      svn_node_kind_t kind;



      SVN_ERR(svn_io_check_path(sdb_abspath, &kind, scratch_pool));

      if (kind != svn_node_file)
        return svn_error_createf(APR_ENOENT, ((void*)0),
                                 _("Working copy database '%s' not found"),
                                 svn_dirent_local_style(sdb_abspath,
                                                        scratch_pool));
    }

  SVN_ERR(svn_sqlite__open(sdb, sdb_abspath, smode,
                           my_statements ? my_statements : statements,
                           0, ((void*)0), timeout, result_pool, scratch_pool));

  if (exclusive)
    SVN_ERR(svn_sqlite__exec_statements(*sdb, STMT_PRAGMA_LOCKING_MODE));

  SVN_ERR(svn_sqlite__create_scalar_function(*sdb, "relpath_depth", 1,
                                             TRUE ,
                                             relpath_depth_sqlite, ((void*)0)));

  return SVN_NO_ERROR;
}
