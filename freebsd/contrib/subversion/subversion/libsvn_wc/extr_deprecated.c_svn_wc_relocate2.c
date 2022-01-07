
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_relocation_validator2_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct compat2_baton {void* baton; int validator; } ;
typedef int apr_pool_t ;


 int compat2_validator ;
 int * svn_wc_relocate3 (char const*,int *,char const*,char const*,int ,int ,struct compat2_baton*,int *) ;

svn_error_t *
svn_wc_relocate2(const char *path,
                 svn_wc_adm_access_t *adm_access,
                 const char *from,
                 const char *to,
                 svn_boolean_t recurse,
                 svn_wc_relocation_validator2_t validator,
                 void *validator_baton,
                 apr_pool_t *pool)
{
  struct compat2_baton cb;

  cb.validator = validator;
  cb.baton = validator_baton;

  return svn_wc_relocate3(path, adm_access, from, to, recurse,
                          compat2_validator, &cb, pool);
}
