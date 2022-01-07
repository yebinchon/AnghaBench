
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef int svn_string_t ;
typedef int svn_error_t ;
typedef enum svn_prop_kind { ____Placeholder_svn_prop_kind } svn_prop_kind ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_W (int ,int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int svn_dirent_is_absolute (char const*) ;
 int * svn_hash_gets (int *,char const*) ;
 int svn_prop_entry_kind ;
 int svn_prop_wc_kind ;
 int svn_property_kind2 (char const*) ;
 int svn_wc__db_base_get_dav_cache (int **,int *,char const*,int *,int *) ;
 int svn_wc__get_actual_props (int **,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc__internal_propget(const svn_string_t **value,
                         svn_wc__db_t *db,
                         const char *local_abspath,
                         const char *name,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{
  apr_hash_t *prophash = ((void*)0);
  enum svn_prop_kind kind = svn_property_kind2(name);

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));
  SVN_ERR_ASSERT(kind != svn_prop_entry_kind);

  if (kind == svn_prop_wc_kind)
    {
      SVN_ERR_W(svn_wc__db_base_get_dav_cache(&prophash, db, local_abspath,
                                              result_pool, scratch_pool),
                _("Failed to load properties"));
    }
  else
    {

      SVN_ERR_W(svn_wc__get_actual_props(&prophash, db, local_abspath,
                                         result_pool, scratch_pool),
                _("Failed to load properties"));
    }

  if (prophash)
    *value = svn_hash_gets(prophash, name);
  else
    *value = ((void*)0);

  return SVN_NO_ERROR;
}
