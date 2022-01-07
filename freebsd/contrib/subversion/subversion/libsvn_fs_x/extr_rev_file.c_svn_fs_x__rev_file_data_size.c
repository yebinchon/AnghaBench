
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int start; } ;
struct TYPE_6__ {TYPE_1__ l2p_info; } ;
typedef TYPE_2__ svn_fs_x__revision_file_t ;
typedef int svn_filesize_t ;
typedef int svn_error_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int auto_read_footer (TYPE_2__*) ;

svn_error_t *
svn_fs_x__rev_file_data_size(svn_filesize_t *size,
                             svn_fs_x__revision_file_t *file)
{
  SVN_ERR(auto_read_footer(file));
  *size = file->l2p_info.start;

  return SVN_NO_ERROR;
}
