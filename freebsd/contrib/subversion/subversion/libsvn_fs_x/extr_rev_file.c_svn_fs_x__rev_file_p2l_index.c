
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int end; int start; } ;
struct TYPE_6__ {int * p2l_stream; int pool; scalar_t__ block_size; TYPE_1__ p2l_info; int file; } ;
typedef TYPE_2__ svn_fs_x__revision_file_t ;
typedef int svn_fs_x__packed_number_stream_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;


 int SVN_ERR (int ) ;
 int SVN_FS_X__P2L_STREAM_PREFIX ;
 int * SVN_NO_ERROR ;
 int auto_read_footer (TYPE_2__*) ;
 int svn_fs_x__packed_stream_open (int **,int ,int ,int ,int ,int ,int ,int ) ;

svn_error_t *
svn_fs_x__rev_file_p2l_index(svn_fs_x__packed_number_stream_t **stream,
                             svn_fs_x__revision_file_t *file)
{
  if (file->p2l_stream== ((void*)0))
    {
      SVN_ERR(auto_read_footer(file));
      SVN_ERR(svn_fs_x__packed_stream_open(&file->p2l_stream,
                                           file->file,
                                           file->p2l_info.start,
                                           file->p2l_info.end,
                                           SVN_FS_X__P2L_STREAM_PREFIX,
                                           (apr_size_t)file->block_size,
                                           file->pool,
                                           file->pool));
    }

  *stream = file->p2l_stream;
  return SVN_NO_ERROR;
}
