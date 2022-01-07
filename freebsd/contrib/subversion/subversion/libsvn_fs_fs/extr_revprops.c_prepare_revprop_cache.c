
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int revprop_prefix; } ;
typedef TYPE_2__ fs_fs_data_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_atomic__unique_counter (int *) ;

__attribute__((used)) static svn_error_t *
prepare_revprop_cache(svn_fs_t *fs,
                      apr_pool_t *scratch_pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  if (!ffd->revprop_prefix)
    SVN_ERR(svn_atomic__unique_counter(&ffd->revprop_prefix));

  return SVN_NO_ERROR;
}
