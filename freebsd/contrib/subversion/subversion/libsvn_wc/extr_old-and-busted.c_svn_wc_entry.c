
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_entry_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int svn_dirent_split (char const**,char const**,char const*,int *) ;
 int * svn_hash_gets (int *,char const*) ;
 int * svn_wc__adm_get_db (int *) ;
 int * svn_wc__adm_retrieve_internal2 (int *,char const*,int *) ;
 int svn_wc__entries_read_internal (int **,int *,int ,int *) ;
 int svn_wc__entry_is_hidden (scalar_t__*,int const*) ;

svn_error_t *
svn_wc_entry(const svn_wc_entry_t **entry,
             const char *path,
             svn_wc_adm_access_t *adm_access,
             svn_boolean_t show_hidden,
             apr_pool_t *pool)
{
  svn_wc__db_t *db = svn_wc__adm_get_db(adm_access);
  const char *local_abspath;
  svn_wc_adm_access_t *dir_access;
  const char *entry_name;
  apr_hash_t *entries;

  SVN_ERR(svn_dirent_get_absolute(&local_abspath, path, pool));



  dir_access = svn_wc__adm_retrieve_internal2(db, local_abspath, pool);
  if (dir_access == ((void*)0))
    {



      const char *dir_abspath;

      svn_dirent_split(&dir_abspath, &entry_name, local_abspath, pool);

      dir_access = svn_wc__adm_retrieve_internal2(db, dir_abspath, pool);
    }
  else
    {

      entry_name = "";
    }

  if (dir_access == ((void*)0))
    {

      *entry = ((void*)0);
      return SVN_NO_ERROR;
    }




  SVN_ERR(svn_wc__entries_read_internal(&entries, dir_access, TRUE, pool));
  *entry = svn_hash_gets(entries, entry_name);

  if (!show_hidden && *entry != ((void*)0))
    {
      svn_boolean_t hidden;

      SVN_ERR(svn_wc__entry_is_hidden(&hidden, *entry));
      if (hidden)
        *entry = ((void*)0);
    }

  return SVN_NO_ERROR;
}
