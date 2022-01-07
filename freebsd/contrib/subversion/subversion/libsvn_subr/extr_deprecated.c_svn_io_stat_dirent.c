
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_io_dirent2_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int * svn_error_trace (int ) ;
 int svn_io_stat_dirent2 (int const**,char const*,int ,int ,int *,int *) ;

svn_error_t *
svn_io_stat_dirent(const svn_io_dirent2_t **dirent_p,
                   const char *path,
                   svn_boolean_t ignore_enoent,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  return svn_error_trace(
            svn_io_stat_dirent2(dirent_p,
                                path,
                                FALSE,
                                ignore_enoent,
                                result_pool,
                                scratch_pool));
}
