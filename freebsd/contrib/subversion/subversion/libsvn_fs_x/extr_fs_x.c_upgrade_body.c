
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * fs; } ;
typedef TYPE_1__ upgrade_baton_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_FS_X__FORMAT_NUMBER ;
 int * SVN_NO_ERROR ;
 int read_format (int*,int*,char const*,int *) ;
 char* svn_fs_x__path_format (int *,int *) ;

__attribute__((used)) static svn_error_t *
upgrade_body(void *baton,
             apr_pool_t *scratch_pool)
{
  upgrade_baton_t *upgrade_baton = baton;
  svn_fs_t *fs = upgrade_baton->fs;
  int format, max_files_per_dir;
  const char *format_path = svn_fs_x__path_format(fs, scratch_pool);


  SVN_ERR(read_format(&format, &max_files_per_dir, format_path,
                      scratch_pool));


  if (format == SVN_FS_X__FORMAT_NUMBER)
    return SVN_NO_ERROR;


  return SVN_NO_ERROR;
}
