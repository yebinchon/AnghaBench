
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef int svn_string_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * apr_hash_make (int *) ;
 int svn_dirent_is_absolute (char const*) ;
 int * svn_error_trace (int ) ;
 int svn_hash_sets (int *,char const*,int const*) ;
 int svn_wc__db_base_get_dav_cache (int **,int *,char const*,int *,int *) ;
 int svn_wc__db_base_set_dav_cache (int *,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
wcprop_set(svn_wc__db_t *db,
           const char *local_abspath,
           const char *name,
           const svn_string_t *value,
           apr_pool_t *scratch_pool)
{
  apr_hash_t *prophash;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));







  SVN_ERR(svn_wc__db_base_get_dav_cache(&prophash, db, local_abspath,
                                        scratch_pool, scratch_pool));

  if (prophash == ((void*)0))
    prophash = apr_hash_make(scratch_pool);

  svn_hash_sets(prophash, name, value);
  return svn_error_trace(svn_wc__db_base_set_dav_cache(db, local_abspath,
                                                       prophash,
                                                       scratch_pool));
}
