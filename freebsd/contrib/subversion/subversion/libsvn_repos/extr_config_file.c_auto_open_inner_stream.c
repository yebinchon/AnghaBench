
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
typedef int svn_stream_t ;
typedef scalar_t__ svn_filesize_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int pool; int inner; int fs_path; int root; } ;
typedef TYPE_1__ presentation_stream_baton_t ;
typedef int apr_size_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_file_contents (int **,int ,int ,int ) ;
 int svn_fs_file_length (scalar_t__*,int ,int ,int ) ;
 int svn_stream_from_stringbuf (int *,int ) ;
 int svn_stringbuf_from_stream (int **,int *,int ,int ) ;

__attribute__((used)) static svn_error_t *
auto_open_inner_stream(presentation_stream_baton_t *b)
{
  if (!b->inner)
    {
      svn_filesize_t length;
      svn_stream_t *stream;
      svn_stringbuf_t *contents;

      SVN_ERR(svn_fs_file_length(&length, b->root, b->fs_path, b->pool));
      SVN_ERR(svn_fs_file_contents(&stream, b->root, b->fs_path, b->pool));
      SVN_ERR(svn_stringbuf_from_stream(&contents, stream,
                                        (apr_size_t)length, b->pool));
      b->inner = svn_stream_from_stringbuf(contents, b->pool);
    }

  return SVN_NO_ERROR;
}
