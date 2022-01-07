
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_6__ {scalar_t__ format; int min_unpacked_rev; } ;
typedef TYPE_2__ fs_fs_data_t ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT (int) ;
 scalar_t__ SVN_FS_FS__MIN_PACKED_FORMAT ;
 int * svn_fs_fs__read_min_unpacked_rev (int *,TYPE_1__*,int *) ;

svn_error_t *
svn_fs_fs__update_min_unpacked_rev(svn_fs_t *fs,
                                   apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;

  SVN_ERR_ASSERT(ffd->format >= SVN_FS_FS__MIN_PACKED_FORMAT);

  return svn_fs_fs__read_min_unpacked_rev(&ffd->min_unpacked_rev, fs, pool);
}
