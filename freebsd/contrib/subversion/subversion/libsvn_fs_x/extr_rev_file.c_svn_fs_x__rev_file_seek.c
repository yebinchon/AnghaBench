
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool; int block_size; int file; } ;
typedef TYPE_1__ svn_fs_x__revision_file_t ;
typedef int svn_error_t ;
typedef int apr_off_t ;


 int SVN_ERR (int ) ;
 int auto_open (TYPE_1__*) ;
 int * svn_error_trace (int ) ;
 int svn_io_file_aligned_seek (int ,int ,int *,int ,int ) ;

svn_error_t *
svn_fs_x__rev_file_seek(svn_fs_x__revision_file_t *file,
                        apr_off_t *buffer_start,
                        apr_off_t offset)
{
  SVN_ERR(auto_open(file));
  return svn_error_trace(svn_io_file_aligned_seek(file->file,
                                                  file->block_size,
                                                  buffer_start, offset,
                                                  file->pool));
}
