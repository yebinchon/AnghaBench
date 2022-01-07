
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_mergeinfo_inheritance_t ;
struct TYPE_4__ {scalar_t__ is_txn_root; int fs; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_fs_mergeinfo_receiver_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_REVISION_ROOT ;
 int SVN_FS_BASE__MIN_MERGEINFO_FORMAT ;
 int * get_mergeinfos_for_paths (TYPE_1__*,int const*,int ,int ,int ,int ,void*,int *) ;
 int * svn_error_create (int ,int *,int *) ;
 int svn_fs_base__test_required_feature_format (int ,char*,int ) ;

__attribute__((used)) static svn_error_t *
base_get_mergeinfo(svn_fs_root_t *root,
                   const apr_array_header_t *paths,
                   svn_mergeinfo_inheritance_t inherit,
                   svn_boolean_t include_descendants,
                   svn_boolean_t adjust_inherited_mergeinfo,
                   svn_fs_mergeinfo_receiver_t receiver,
                   void *baton,
                   apr_pool_t *scratch_pool)
{

  SVN_ERR(svn_fs_base__test_required_feature_format
          (root->fs, "mergeinfo", SVN_FS_BASE__MIN_MERGEINFO_FORMAT));


  if (root->is_txn_root)
    return svn_error_create(SVN_ERR_FS_NOT_REVISION_ROOT, ((void*)0), ((void*)0));


  return get_mergeinfos_for_paths(root, paths,
                                  inherit, include_descendants,
                                  adjust_inherited_mergeinfo,
                                  receiver, baton,
                                  scratch_pool);
}
