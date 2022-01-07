
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_make (int *) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_prop_diffs (int **,int *,int *,int *) ;
 int svn_wc__db_read_pristine_props (int **,int *,char const*,int *,int *) ;
 int svn_wc__db_read_props (int **,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc__internal_propdiff(apr_array_header_t **propchanges,
                          apr_hash_t **original_props,
                          svn_wc__db_t *db,
                          const char *local_abspath,
                          apr_pool_t *result_pool,
                          apr_pool_t *scratch_pool)
{
  apr_hash_t *baseprops;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));



  SVN_ERR(svn_wc__db_read_pristine_props(&baseprops, db, local_abspath,
                                         result_pool, scratch_pool));

  if (original_props != ((void*)0))
    *original_props = baseprops;

  if (propchanges != ((void*)0))
    {
      apr_hash_t *actual_props;



      if (baseprops == ((void*)0))
        baseprops = apr_hash_make(scratch_pool);

      SVN_ERR(svn_wc__db_read_props(&actual_props, db, local_abspath,
                                    result_pool, scratch_pool));




      SVN_ERR(svn_prop_diffs(propchanges, actual_props, baseprops,
                             result_pool));
    }

  return SVN_NO_ERROR;
}
