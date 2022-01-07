
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int format; int max_files_per_dir; } ;
typedef TYPE_1__ svn_fs_x__data_t ;
struct TYPE_6__ {TYPE_1__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int read_format (int*,int*,int ,int *) ;
 int svn_fs_x__path_format (TYPE_2__*,int *) ;

svn_error_t *
svn_fs_x__read_format_file(svn_fs_t *fs,
                           apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  int format, max_files_per_dir;


  SVN_ERR(read_format(&format, &max_files_per_dir,
                      svn_fs_x__path_format(fs, scratch_pool), scratch_pool));


  ffd->format = format;
  ffd->max_files_per_dir = max_files_per_dir;

  return SVN_NO_ERROR;
}
