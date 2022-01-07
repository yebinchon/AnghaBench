
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_6__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_boolean_t ;
struct TYPE_7__ {scalar_t__ format; } ;
typedef TYPE_2__ fs_fs_data_t ;
typedef int apr_pool_t ;


 scalar_t__ SVN_FS_FS__MIN_PACKED_FORMAT ;
 char const* path_rev_absolute_internal (TYPE_1__*,int ,int,int *) ;
 scalar_t__ svn_fs_fs__is_packed_rev (TYPE_1__*,int ) ;

const char *
svn_fs_fs__path_rev_absolute(svn_fs_t *fs,
                             svn_revnum_t rev,
                             apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  svn_boolean_t is_packed = ffd->format >= SVN_FS_FS__MIN_PACKED_FORMAT
                         && svn_fs_fs__is_packed_rev(fs, rev);

  return path_rev_absolute_internal(fs, rev, is_packed, pool);
}
