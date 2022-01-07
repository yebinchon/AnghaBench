
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_6__ {int format; int max_files_per_dir; int use_log_addressing; } ;
typedef TYPE_2__ fs_fs_data_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int path_format (TYPE_1__*,int *) ;
 int read_format (int*,int*,int *,int ,int *) ;

svn_error_t *
svn_fs_fs__read_format_file(svn_fs_t *fs, apr_pool_t *scratch_pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  int format, max_files_per_dir;
  svn_boolean_t use_log_addressing;


  SVN_ERR(read_format(&format, &max_files_per_dir, &use_log_addressing,
                      path_format(fs, scratch_pool), scratch_pool));


  ffd->format = format;
  ffd->max_files_per_dir = max_files_per_dir;
  ffd->use_log_addressing = use_log_addressing;

  return SVN_NO_ERROR;
}
