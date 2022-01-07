
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int abspath; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_WC_PATH_UNEXPECTED_STATUS ;
 int * SVN_NO_ERROR ;
 int SVN_WC__DB_WITH_TXN (int ,TYPE_1__*) ;
 int VERIFY_USABLE_WCROOT (TYPE_1__*) ;
 int _ (char*) ;
 int path_for_error_message (TYPE_1__*,char const*,int *) ;
 int scan_addition (scalar_t__*,char const**,int *,int *,int *,int *,int *,char const**,char const**,int*,TYPE_1__*,char const*,int *,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 char* svn_relpath_prefix (char const*,int,int *) ;
 scalar_t__ svn_wc__db_status_moved_here ;
 int svn_wc__db_wcroot_parse_local_abspath (TYPE_1__**,char const**,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc__db_scan_moved(const char **moved_from_abspath,
                      const char **op_root_abspath,
                      const char **op_root_moved_from_abspath,
                      const char **moved_from_delete_abspath,
                      svn_wc__db_t *db,
                      const char *local_abspath,
                      apr_pool_t *result_pool,
                      apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  svn_wc__db_status_t status;
  const char *op_root_relpath = ((void*)0);
  const char *moved_from_relpath = ((void*)0);
  const char *moved_from_op_root_relpath = ((void*)0);
  int moved_from_op_depth = -1;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));

  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&wcroot, &local_relpath, db,
                              local_abspath, scratch_pool, scratch_pool));
  VERIFY_USABLE_WCROOT(wcroot);

  SVN_WC__DB_WITH_TXN(
          scan_addition(&status,
                        op_root_abspath
                                ? &op_root_relpath
                                : ((void*)0),
                        ((void*)0), ((void*)0),
                        ((void*)0), ((void*)0), ((void*)0),
                        moved_from_abspath
                            ? &moved_from_relpath
                            : ((void*)0),
                        (op_root_moved_from_abspath
                         || moved_from_delete_abspath)
                            ? &moved_from_op_root_relpath
                            : ((void*)0),
                        moved_from_delete_abspath
                            ? &moved_from_op_depth
                            : ((void*)0),
                        wcroot, local_relpath, scratch_pool, scratch_pool),
          wcroot);

  if (status != svn_wc__db_status_moved_here || !moved_from_relpath)
    return svn_error_createf(SVN_ERR_WC_PATH_UNEXPECTED_STATUS, ((void*)0),
                             _("Path '%s' was not moved here"),
                             path_for_error_message(wcroot, local_relpath,
                                                    scratch_pool));

  if (op_root_abspath)
    *op_root_abspath = svn_dirent_join(wcroot->abspath, op_root_relpath,
                                       result_pool);

  if (moved_from_abspath)
    *moved_from_abspath = svn_dirent_join(wcroot->abspath, moved_from_relpath,
                                          result_pool);

  if (op_root_moved_from_abspath)
    *op_root_moved_from_abspath = svn_dirent_join(wcroot->abspath,
                                                  moved_from_op_root_relpath,
                                                  result_pool);


  if (moved_from_delete_abspath)
    {
      const char *tmp = svn_relpath_prefix(moved_from_op_root_relpath,
                                           moved_from_op_depth, scratch_pool);

      *moved_from_delete_abspath = svn_dirent_join(wcroot->abspath, tmp,
                                                   scratch_pool);
    }

  return SVN_NO_ERROR;
}
