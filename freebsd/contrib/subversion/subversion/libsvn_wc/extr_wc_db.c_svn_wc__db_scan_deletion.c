
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int abspath; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_WC__DB_WITH_TXN (int ,TYPE_1__*) ;
 int VERIFY_USABLE_WCROOT (TYPE_1__*) ;
 int scan_deletion (char const**,char const**,char const**,char const**,TYPE_1__*,char const*,int *,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int svn_wc__db_wcroot_parse_local_abspath (TYPE_1__**,char const**,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc__db_scan_deletion(const char **base_del_abspath,
                         const char **moved_to_abspath,
                         const char **work_del_abspath,
                         const char **moved_to_op_root_abspath,
                         svn_wc__db_t *db,
                         const char *local_abspath,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  const char *base_del_relpath, *moved_to_relpath, *work_del_relpath;
  const char *moved_to_op_root_relpath;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));

  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&wcroot, &local_relpath, db,
                              local_abspath, scratch_pool, scratch_pool));
  VERIFY_USABLE_WCROOT(wcroot);

  SVN_WC__DB_WITH_TXN(
    scan_deletion(&base_del_relpath, &moved_to_relpath,
                  &work_del_relpath, &moved_to_op_root_relpath,
                  wcroot, local_relpath, result_pool, scratch_pool),
    wcroot);

  if (base_del_abspath)
    {
      *base_del_abspath = (base_del_relpath
                           ? svn_dirent_join(wcroot->abspath,
                                             base_del_relpath, result_pool)
                           : ((void*)0));
    }
  if (moved_to_abspath)
    {
      *moved_to_abspath = (moved_to_relpath
                           ? svn_dirent_join(wcroot->abspath,
                                             moved_to_relpath, result_pool)
                           : ((void*)0));
    }
  if (work_del_abspath)
    {
      *work_del_abspath = (work_del_relpath
                           ? svn_dirent_join(wcroot->abspath,
                                             work_del_relpath, result_pool)
                           : ((void*)0));
    }
  if (moved_to_op_root_abspath)
    {
      *moved_to_op_root_abspath = (moved_to_op_root_relpath
                           ? svn_dirent_join(wcroot->abspath,
                                             moved_to_op_root_relpath,
                                             result_pool)
                           : ((void*)0));
    }

  return SVN_NO_ERROR;
}
