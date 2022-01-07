
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * svn_mergeinfo_t ;
typedef scalar_t__ svn_mergeinfo_catalog_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 scalar_t__ apr_hash_count (scalar_t__) ;
 char* apr_pstrdup (int *,char const*) ;
 int * svn_hash_gets (scalar_t__,char const*) ;
 int svn_mergeinfo__add_suffix_to_mergeinfo (int **,int *,char const*,int *,int *) ;
 int svn_mergeinfo__equals (int *,int *,int *,int ,int *) ;
 int svn_mergeinfo_intersect2 (int **,int *,int *,int ,int *,int *) ;
 int svn_relpath_basename (char const*,int *) ;
 char* svn_relpath_dirname (char const*,int *) ;
 char* svn_relpath_join (int ,char const*,int *) ;

__attribute__((used)) static svn_error_t *
mergeinfo_in_catalog(svn_boolean_t *in_catalog,
                     const char **cat_key_path,
                     const char *repos_rel_path,
                     svn_mergeinfo_t mergeinfo,
                     svn_mergeinfo_catalog_t catalog,
                     apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{
  const char *walk_path = ((void*)0);

  *in_catalog = FALSE;
  *cat_key_path = ((void*)0);

  if (mergeinfo && catalog && apr_hash_count(catalog))
    {
      const char *path = repos_rel_path;



      svn_mergeinfo_t mergeinfo_in_cat = ((void*)0);

      while (1)
        {
          mergeinfo_in_cat = svn_hash_gets(catalog, path);

          if (mergeinfo_in_cat)
            {
              *cat_key_path = apr_pstrdup(result_pool, path);
              break;
            }
          else
            {
              walk_path = svn_relpath_join(svn_relpath_basename(path,
                                                                scratch_pool),
                                           walk_path ? walk_path : "",
                                           scratch_pool);
              path = svn_relpath_dirname(path, scratch_pool);

              if (path[0] == '\0')
                break;
            }
        }

      if (mergeinfo_in_cat)
        {
          if (walk_path)
            SVN_ERR(svn_mergeinfo__add_suffix_to_mergeinfo(&mergeinfo_in_cat,
                                                           mergeinfo_in_cat,
                                                           walk_path,
                                                           scratch_pool,
                                                           scratch_pool));
          SVN_ERR(svn_mergeinfo_intersect2(&mergeinfo_in_cat,
                                           mergeinfo_in_cat, mergeinfo,
                                           TRUE,
                                           scratch_pool, scratch_pool));
          SVN_ERR(svn_mergeinfo__equals(in_catalog, mergeinfo_in_cat,
                                        mergeinfo, TRUE, scratch_pool));
        }
    }

  return SVN_NO_ERROR;
}
