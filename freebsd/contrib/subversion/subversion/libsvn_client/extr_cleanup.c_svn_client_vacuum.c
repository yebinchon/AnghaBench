
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int do_cleanup (char const*,int ,int ,int ,int ,int ,int ,int ,int *,int *) ;
 int svn_dirent_is_absolute (char const*) ;

svn_error_t *
svn_client_vacuum(const char *dir_abspath,
                  svn_boolean_t remove_unversioned_items,
                  svn_boolean_t remove_ignored_items,
                  svn_boolean_t fix_recorded_timestamps,
                  svn_boolean_t vacuum_pristines,
                  svn_boolean_t include_externals,
                  svn_client_ctx_t *ctx,
                  apr_pool_t *scratch_pool)
{
  SVN_ERR_ASSERT(svn_dirent_is_absolute(dir_abspath));

  SVN_ERR(do_cleanup(dir_abspath,
                     FALSE ,
                     fix_recorded_timestamps,
                     FALSE ,
                     vacuum_pristines,
                     remove_unversioned_items,
                     remove_ignored_items,
                     include_externals,
                     ctx, scratch_pool));

  return SVN_NO_ERROR;
}
