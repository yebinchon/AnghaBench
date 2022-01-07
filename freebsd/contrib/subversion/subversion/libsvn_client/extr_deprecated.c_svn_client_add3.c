
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_DEPTH_INFINITY_OR_EMPTY (int ) ;
 int * svn_client_add4 (char const*,int ,int ,int ,int ,int *,int *) ;

svn_error_t *
svn_client_add3(const char *path,
                svn_boolean_t recursive,
                svn_boolean_t force,
                svn_boolean_t no_ignore,
                svn_client_ctx_t *ctx,
                apr_pool_t *pool)
{
  return svn_client_add4(path, SVN_DEPTH_INFINITY_OR_EMPTY(recursive),
                         force, no_ignore, FALSE, ctx,
                         pool);
}
