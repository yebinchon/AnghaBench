
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_UNSUPPORTED_FEATURE ;
 int TRUE ;
 int _ (char*) ;
 int * svn_client_relocate2 (char const*,char const*,char const*,int ,int *,int *) ;
 int svn_error_create (int ,int *,int ) ;

svn_error_t *
svn_client_relocate(const char *path,
                    const char *from_prefix,
                    const char *to_prefix,
                    svn_boolean_t recurse,
                    svn_client_ctx_t *ctx,
                    apr_pool_t *pool)
{
  if (! recurse)
    SVN_ERR(svn_error_create(SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
                             _("Non-recursive relocation not supported")));
  return svn_client_relocate2(path, from_prefix, to_prefix, TRUE, ctx, pool);
}
