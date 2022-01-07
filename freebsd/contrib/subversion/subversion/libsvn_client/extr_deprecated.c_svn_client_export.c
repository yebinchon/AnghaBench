
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int * svn_client_export2 (int *,char const*,char const*,int *,int ,int *,int *,int *) ;

svn_error_t *
svn_client_export(svn_revnum_t *result_rev,
                  const char *from_path_or_url,
                  const char *to_path,
                  svn_opt_revision_t *revision,
                  svn_boolean_t force,
                  svn_client_ctx_t *ctx,
                  apr_pool_t *pool)
{
  return svn_client_export2(result_rev, from_path_or_url, to_path, revision,
                            force, ((void*)0), ctx, pool);
}
