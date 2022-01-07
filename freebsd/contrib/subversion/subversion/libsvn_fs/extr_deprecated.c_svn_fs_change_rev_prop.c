
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * svn_error_trace (int ) ;
 int svn_fs_change_rev_prop2 (int *,int ,char const*,int *,int const*,int *) ;

svn_error_t *
svn_fs_change_rev_prop(svn_fs_t *fs, svn_revnum_t rev, const char *name,
                       const svn_string_t *value, apr_pool_t *pool)
{
  return svn_error_trace(
           svn_fs_change_rev_prop2(fs, rev, name, ((void*)0), value, pool));
}
