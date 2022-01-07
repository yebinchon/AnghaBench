
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_fs_root_t ;
struct TYPE_4__ {char const* fs_path; int * pool; int * root; } ;
typedef TYPE_1__ presentation_stream_baton_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_pcalloc (int *,int) ;
 int data_available_handler_rep ;
 int mark_handler_rep ;
 int read_handler_rep ;
 int readline_handler_rep ;
 int seek_handler_rep ;
 int skip_handler_rep ;
 int * svn_stream_create (TYPE_1__*,int *) ;
 int svn_stream_set_data_available (int *,int ) ;
 int svn_stream_set_mark (int *,int ) ;
 int svn_stream_set_read2 (int *,int ,int ) ;
 int svn_stream_set_readline (int *,int ) ;
 int svn_stream_set_seek (int *,int ) ;
 int svn_stream_set_skip (int *,int ) ;

__attribute__((used)) static svn_stream_t *
representation_stream(svn_fs_root_t *root,
                      const char *fs_path,
                      apr_pool_t *pool)
{
  svn_stream_t *stream;
  presentation_stream_baton_t *baton;

  baton = apr_pcalloc(pool, sizeof(*baton));
  baton->root = root;
  baton->fs_path = fs_path;
  baton->pool = pool;

  stream = svn_stream_create(baton, pool);
  svn_stream_set_read2(stream, read_handler_rep, read_handler_rep);
  svn_stream_set_mark(stream, mark_handler_rep);
  svn_stream_set_seek(stream, seek_handler_rep);
  svn_stream_set_skip(stream, skip_handler_rep);
  svn_stream_set_data_available(stream, data_available_handler_rep);
  svn_stream_set_readline(stream, readline_handler_rep);
  return stream;
}
