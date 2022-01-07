
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_6__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_7__ {int min_unpacked_rev; int max_files_per_dir; } ;
typedef TYPE_2__ fs_fs_data_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_fs_fs__read_min_unpacked_rev (int*,TYPE_1__*,int *) ;
 int svn_fs_fs__youngest_rev (int*,TYPE_1__*,int *) ;

__attribute__((used)) static svn_error_t *
get_pack_status(svn_boolean_t *fully_packed,
                svn_fs_t *fs,
                apr_pool_t *scratch_pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  apr_int64_t completed_shards;
  svn_revnum_t youngest;

  SVN_ERR(svn_fs_fs__read_min_unpacked_rev(&ffd->min_unpacked_rev, fs,
                                           scratch_pool));

  SVN_ERR(svn_fs_fs__youngest_rev(&youngest, fs, scratch_pool));
  completed_shards = (youngest + 1) / ffd->max_files_per_dir;


  if (ffd->min_unpacked_rev == (completed_shards * ffd->max_files_per_dir))
    *fully_packed = TRUE;
  else
    *fully_packed = FALSE;

  return SVN_NO_ERROR;
}
