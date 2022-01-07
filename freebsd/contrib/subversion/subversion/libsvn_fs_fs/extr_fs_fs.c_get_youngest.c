
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_uint64_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_fs__read_current (int *,int *,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
get_youngest(svn_revnum_t *youngest_p,
             svn_fs_t *fs,
             apr_pool_t *pool)
{
  apr_uint64_t dummy;
  SVN_ERR(svn_fs_fs__read_current(youngest_p, &dummy, &dummy, fs, pool));
  return SVN_NO_ERROR;
}
