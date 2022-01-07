
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
 int * SVN_NO_ERROR ;
 int TRUE ;
 int get_patch_abspath (char**,char const*,char const*,int *,int *,int *) ;
 int svn_client_patch (char*,char const*,int ,int ,int ,int ,int ,int *,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
shelf_apply_patch(const char *name,
                  const char *wc_root_abspath,
                  svn_boolean_t reverse,
                  svn_boolean_t dry_run,
                  svn_client_ctx_t *ctx,
                  apr_pool_t *scratch_pool)
{
  char *patch_abspath;

  SVN_ERR(get_patch_abspath(&patch_abspath, name, wc_root_abspath,
                            ctx, scratch_pool, scratch_pool));
  SVN_ERR(svn_client_patch(patch_abspath, wc_root_abspath,
                           dry_run, 0 ,
                           reverse,
                           FALSE ,
                           TRUE , ((void*)0), ((void*)0),
                           ctx, scratch_pool));

  return SVN_NO_ERROR;
}
