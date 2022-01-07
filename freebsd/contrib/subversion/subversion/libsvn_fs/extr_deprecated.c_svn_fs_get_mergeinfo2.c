
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


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int mergeinfo_receiver ;
 int svn_fs_get_mergeinfo3 (int *,int const*,int ,int ,int ,int ,int ,int *) ;
 int svn_hash__make (int *) ;

svn_error_t *
svn_fs_get_mergeinfo2(svn_mergeinfo_catalog_t *catalog,
                      svn_fs_root_t *root,
                      const apr_array_header_t *paths,
                      svn_mergeinfo_inheritance_t inherit,
                      svn_boolean_t include_descendants,
                      svn_boolean_t adjust_inherited_mergeinfo,
                      apr_pool_t *result_pool,
                      apr_pool_t *scratch_pool)
{
  svn_mergeinfo_catalog_t result_catalog = svn_hash__make(result_pool);
  SVN_ERR(svn_fs_get_mergeinfo3(root, paths, inherit,
                                include_descendants,
                                adjust_inherited_mergeinfo,
                                mergeinfo_receiver, result_catalog,
                                scratch_pool));
  *catalog = result_catalog;

  return SVN_NO_ERROR;
}
