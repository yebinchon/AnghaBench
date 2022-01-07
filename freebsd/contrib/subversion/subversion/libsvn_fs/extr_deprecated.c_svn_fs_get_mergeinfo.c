
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_mergeinfo_inheritance_t ;
typedef int svn_mergeinfo_catalog_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int TRUE ;
 int * svn_error_trace (int ) ;
 int svn_fs_get_mergeinfo2 (int *,int *,int const*,int ,int ,int ,int *,int *) ;

svn_error_t *
svn_fs_get_mergeinfo(svn_mergeinfo_catalog_t *catalog,
                     svn_fs_root_t *root,
                     const apr_array_header_t *paths,
                     svn_mergeinfo_inheritance_t inherit,
                     svn_boolean_t include_descendants,
                     apr_pool_t *pool)
{
  return svn_error_trace(svn_fs_get_mergeinfo2(catalog, root, paths,
                                               inherit,
                                               include_descendants,
                                               TRUE, pool, pool));
}
