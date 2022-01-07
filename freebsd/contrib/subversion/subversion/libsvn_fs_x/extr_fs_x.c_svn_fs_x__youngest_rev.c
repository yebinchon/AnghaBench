
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_5__ {int youngest_rev_cache; } ;
typedef TYPE_1__ svn_fs_x__data_t ;
struct TYPE_6__ {TYPE_1__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_x__read_current (int *,TYPE_2__*,int *) ;

svn_error_t *
svn_fs_x__youngest_rev(svn_revnum_t *youngest_p,
                       svn_fs_t *fs,
                       apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  SVN_ERR(svn_fs_x__read_current(youngest_p, fs, scratch_pool));
  ffd->youngest_rev_cache = *youngest_p;

  return SVN_NO_ERROR;
}
