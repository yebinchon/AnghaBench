
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_adm_access_t ;
typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int prune_deleted (int **,int *,int *,int *) ;
 int read_entries (int **,int *,char const*,int *,int *) ;
 char* svn_wc__adm_access_abspath (int *) ;
 int * svn_wc__adm_access_entries (int *) ;
 int * svn_wc__adm_access_pool_internal (int *) ;
 int svn_wc__adm_access_set_entries (int *,int *) ;
 int * svn_wc__adm_get_db (int *) ;

svn_error_t *
svn_wc__entries_read_internal(apr_hash_t **entries,
                              svn_wc_adm_access_t *adm_access,
                              svn_boolean_t show_hidden,
                              apr_pool_t *pool)
{
  apr_hash_t *new_entries;

  new_entries = svn_wc__adm_access_entries(adm_access);
  if (! new_entries)
    {
      svn_wc__db_t *db = svn_wc__adm_get_db(adm_access);
      const char *local_abspath = svn_wc__adm_access_abspath(adm_access);
      apr_pool_t *result_pool = svn_wc__adm_access_pool_internal(adm_access);

      SVN_ERR(read_entries(&new_entries, db, local_abspath,
                           result_pool, pool));

      svn_wc__adm_access_set_entries(adm_access, new_entries);
    }

  if (show_hidden)
    *entries = new_entries;
  else
    SVN_ERR(prune_deleted(entries, new_entries,
                          svn_wc__adm_access_pool_internal(adm_access),
                          pool));

  return SVN_NO_ERROR;
}
