
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int min_unpacked_rev; } ;
typedef TYPE_1__ svn_fs_x__data_t ;
struct TYPE_6__ {TYPE_1__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * svn_fs_x__read_min_unpacked_rev (int *,TYPE_2__*,int *) ;

svn_error_t *
svn_fs_x__update_min_unpacked_rev(svn_fs_t *fs,
                                  apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  return svn_fs_x__read_min_unpacked_rev(&ffd->min_unpacked_rev, fs,
                                         scratch_pool);
}
