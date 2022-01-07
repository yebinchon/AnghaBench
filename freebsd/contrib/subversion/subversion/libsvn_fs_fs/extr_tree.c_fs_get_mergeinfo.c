
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_mergeinfo_inheritance_t ;
struct TYPE_6__ {TYPE_3__* fs; scalar_t__ is_txn_root; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_fs_mergeinfo_receiver_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_7__ {int format; } ;
typedef TYPE_2__ fs_fs_data_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;
struct TYPE_8__ {int path; TYPE_2__* fsap_data; } ;


 int SVN_ERR_FS_NOT_REVISION_ROOT ;
 int SVN_ERR_UNSUPPORTED_FEATURE ;
 int SVN_FS_FS__MIN_MERGEINFO_FORMAT ;
 int _ (char*) ;
 int * get_mergeinfos_for_paths (TYPE_1__*,int const*,int ,int ,int ,int ,void*,int *) ;
 int * svn_error_create (int ,int *,int *) ;
 int * svn_error_createf (int ,int *,int ,int ,int ,int ) ;
 int svn_fs_fs__fs_supports_mergeinfo (TYPE_3__*) ;

__attribute__((used)) static svn_error_t *
fs_get_mergeinfo(svn_fs_root_t *root,
                 const apr_array_header_t *paths,
                 svn_mergeinfo_inheritance_t inherit,
                 svn_boolean_t include_descendants,
                 svn_boolean_t adjust_inherited_mergeinfo,
                 svn_fs_mergeinfo_receiver_t receiver,
                 void *baton,
                 apr_pool_t *scratch_pool)
{
  fs_fs_data_t *ffd = root->fs->fsap_data;


  if (root->is_txn_root)
    return svn_error_create(SVN_ERR_FS_NOT_REVISION_ROOT, ((void*)0), ((void*)0));


  if (! svn_fs_fs__fs_supports_mergeinfo(root->fs))
    return svn_error_createf
      (SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
       _("Querying mergeinfo requires version %d of the FSFS filesystem "
         "schema; filesystem '%s' uses only version %d"),
       SVN_FS_FS__MIN_MERGEINFO_FORMAT, root->fs->path, ffd->format);


  return get_mergeinfos_for_paths(root, paths, inherit,
                                  include_descendants,
                                  adjust_inherited_mergeinfo,
                                  receiver, baton,
                                  scratch_pool);
}
