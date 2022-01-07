
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_INVALID_REVNUM ;
 int svn_depth_infinity ;
 int * svn_error_trace (int ) ;
 int write_path_info (void*,char const*,int *,int ,int ,int ,int *,int *) ;

svn_error_t *
svn_repos_delete_path(void *baton, const char *path, apr_pool_t *pool)
{


  return svn_error_trace(
            write_path_info(baton, path, ((void*)0), SVN_INVALID_REVNUM,
                            svn_depth_infinity, FALSE, ((void*)0), pool));
}
