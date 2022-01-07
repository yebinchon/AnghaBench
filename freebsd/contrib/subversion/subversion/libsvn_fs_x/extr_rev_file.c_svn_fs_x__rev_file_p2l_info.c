
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int p2l_info; } ;
typedef TYPE_1__ svn_fs_x__revision_file_t ;
typedef int svn_fs_x__index_info_t ;
typedef int svn_error_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int auto_read_footer (TYPE_1__*) ;

svn_error_t *
svn_fs_x__rev_file_p2l_info(svn_fs_x__index_info_t *info,
                            svn_fs_x__revision_file_t *file)
{
  SVN_ERR(auto_read_footer(file));
  *info = file->p2l_info;

  return SVN_NO_ERROR;
}
