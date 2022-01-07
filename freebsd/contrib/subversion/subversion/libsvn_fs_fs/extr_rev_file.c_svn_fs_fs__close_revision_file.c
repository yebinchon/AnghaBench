
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * p2l_stream; int * l2p_stream; int * stream; int * file; int pool; } ;
typedef TYPE_1__ svn_fs_fs__revision_file_t ;
typedef int svn_error_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_io_file_close (int *,int ) ;
 int svn_stream_close (int *) ;

svn_error_t *
svn_fs_fs__close_revision_file(svn_fs_fs__revision_file_t *file)
{
  if (file->stream)
    SVN_ERR(svn_stream_close(file->stream));
  if (file->file)
    SVN_ERR(svn_io_file_close(file->file, file->pool));

  file->file = ((void*)0);
  file->stream = ((void*)0);
  file->l2p_stream = ((void*)0);
  file->p2l_stream = ((void*)0);

  return SVN_NO_ERROR;
}
