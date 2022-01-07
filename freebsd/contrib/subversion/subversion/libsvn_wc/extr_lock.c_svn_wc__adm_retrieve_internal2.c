
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_adm_access_t ;
typedef int svn_wc__db_t ;
typedef int apr_pool_t ;


 scalar_t__ IS_MISSING (int *) ;
 int * get_from_shared (char const*,int *,int *) ;

svn_wc_adm_access_t *
svn_wc__adm_retrieve_internal2(svn_wc__db_t *db,
                               const char *abspath,
                               apr_pool_t *scratch_pool)
{
  svn_wc_adm_access_t *adm_access = get_from_shared(abspath, db, scratch_pool);


  if (IS_MISSING(adm_access))
    adm_access = ((void*)0);

  return adm_access;
}
