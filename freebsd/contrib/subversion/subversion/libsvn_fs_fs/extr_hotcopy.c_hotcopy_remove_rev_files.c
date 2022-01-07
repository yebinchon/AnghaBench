
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
struct TYPE_4__ {int path; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int PATH_REVS_DIR ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int hotcopy_remove_files (TYPE_1__*,int ,scalar_t__,scalar_t__,int,int *) ;
 int svn_dirent_join (int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
hotcopy_remove_rev_files(svn_fs_t *dst_fs,
                         svn_revnum_t start_rev,
                         svn_revnum_t end_rev,
                         int max_files_per_dir,
                         apr_pool_t *scratch_pool)
{
  SVN_ERR_ASSERT(start_rev <= end_rev);
  SVN_ERR(hotcopy_remove_files(dst_fs,
                               svn_dirent_join(dst_fs->path,
                                               PATH_REVS_DIR,
                                               scratch_pool),
                               start_rev, end_rev,
                               max_files_per_dir, scratch_pool));

  return SVN_NO_ERROR;
}
