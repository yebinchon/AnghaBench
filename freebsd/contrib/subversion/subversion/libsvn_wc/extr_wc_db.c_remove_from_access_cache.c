
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_adm_access_t ;
typedef int apr_hash_t ;


 int * svn_hash_gets (int *,char const*) ;
 int svn_wc__adm_access_set_entries (int *,int *) ;

__attribute__((used)) static void
remove_from_access_cache(apr_hash_t *access_cache,
                         const char *local_abspath)
{
  svn_wc_adm_access_t *adm_access;

  adm_access = svn_hash_gets(access_cache, local_abspath);
  if (adm_access)
    svn_wc__adm_access_set_entries(adm_access, ((void*)0));
}
