
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_mergeinfo_t ;
typedef void* svn_mergeinfo_catalog_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int * apr_hash_pool_get (void*) ;
 int apr_hash_set (void*,int ,int ,int ) ;
 int apr_pstrmemdup (int *,char const*,int ) ;
 int strlen (char const*) ;
 int svn_mergeinfo_dup (int ,int *) ;

__attribute__((used)) static svn_error_t *
mergeinfo_receiver(const char *path,
                   svn_mergeinfo_t mergeinfo,
                   void *baton,
                   apr_pool_t *scratch_pool)
{
  svn_mergeinfo_catalog_t catalog = baton;
  apr_pool_t *result_pool = apr_hash_pool_get(catalog);
  apr_size_t len = strlen(path);

  apr_hash_set(catalog,
               apr_pstrmemdup(result_pool, path, len),
               len,
               svn_mergeinfo_dup(mergeinfo, result_pool));

  return SVN_NO_ERROR;
}
