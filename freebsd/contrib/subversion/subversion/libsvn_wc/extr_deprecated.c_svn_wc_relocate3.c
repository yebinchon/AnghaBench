
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_relocation_validator3_t ;
typedef int svn_wc_context_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_UNSUPPORTED_FEATURE ;
 int _ (char*) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int svn_error_create (int ,int *,int ) ;
 int * svn_error_trace (int ) ;
 int svn_wc__adm_get_db (int *) ;
 int svn_wc__context_create_with_db (int **,int *,int ,int *) ;
 int svn_wc_context_destroy (int *) ;
 int svn_wc_relocate4 (int *,char const*,char const*,char const*,int ,void*,int *) ;

svn_error_t *
svn_wc_relocate3(const char *path,
                 svn_wc_adm_access_t *adm_access,
                 const char *from,
                 const char *to,
                 svn_boolean_t recurse,
                 svn_wc_relocation_validator3_t validator,
                 void *validator_baton,
                 apr_pool_t *pool)
{
  const char *local_abspath;
  svn_wc_context_t *wc_ctx;

  if (! recurse)
    SVN_ERR(svn_error_create(SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
                             _("Non-recursive relocation not supported")));

  SVN_ERR(svn_dirent_get_absolute(&local_abspath, path, pool));
  SVN_ERR(svn_wc__context_create_with_db(&wc_ctx, ((void*)0) ,
                                         svn_wc__adm_get_db(adm_access),
                                         pool));

  SVN_ERR(svn_wc_relocate4(wc_ctx, local_abspath, from, to,
                           validator, validator_baton, pool));

  return svn_error_trace(svn_wc_context_destroy(wc_ctx));
}
