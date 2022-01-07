
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stream_t ;
struct TYPE_4__ {int * stream; } ;
typedef TYPE_1__ svn_fs_x__revision_file_t ;
typedef int svn_error_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int auto_open (TYPE_1__*) ;

svn_error_t *
svn_fs_x__rev_file_stream(svn_stream_t **stream,
                          svn_fs_x__revision_file_t *file)
{
  SVN_ERR(auto_open(file));

  *stream = file->stream;
  return SVN_NO_ERROR;
}
