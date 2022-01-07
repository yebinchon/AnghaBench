
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_DEPTH_INFINITY_OR_EMPTY (int ) ;
 int SVN_INVALID_REVNUM ;
 int * svn_client_propset3 (int *,char const*,int const*,char const*,int ,int ,int ,int *,int *,int *,int *) ;

svn_error_t *
svn_client_propset2(const char *propname,
                    const svn_string_t *propval,
                    const char *target,
                    svn_boolean_t recurse,
                    svn_boolean_t skip_checks,
                    svn_client_ctx_t *ctx,
                    apr_pool_t *pool)
{
  return svn_client_propset3(((void*)0), propname, propval, target,
                             SVN_DEPTH_INFINITY_OR_EMPTY(recurse),
                             skip_checks, SVN_INVALID_REVNUM,
                             ((void*)0), ((void*)0), ctx, pool);
}
