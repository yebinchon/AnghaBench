
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_txdelta_window_handler_t ;
typedef int svn_error_t ;
struct handler_baton {int apply_baton; int apply_handler; int tmppath; int * pool; } ;
struct file_baton {int text_digest; int tmp_stream; int tmppath; int pool; int path; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 struct handler_baton* apr_palloc (int *,int) ;
 int svn_dirent_dirname (int ,int *) ;
 int svn_io_file_del_none ;
 int svn_stream_disown (int ,int *) ;
 int svn_stream_empty (int *) ;
 int svn_stream_open_unique (int *,int *,int ,int ,int ,int ) ;
 int svn_txdelta_apply (int ,int ,int ,int *,int *,int *,int *) ;
 int window_handler ;

__attribute__((used)) static svn_error_t *
apply_textdelta(void *file_baton,
                const char *base_checksum,
                apr_pool_t *pool,
                svn_txdelta_window_handler_t *handler,
                void **handler_baton)
{
  struct file_baton *fb = file_baton;
  struct handler_baton *hb = apr_palloc(pool, sizeof(*hb));



  SVN_ERR(svn_stream_open_unique(&fb->tmp_stream, &fb->tmppath,
                                 svn_dirent_dirname(fb->path, pool),
                                 svn_io_file_del_none, fb->pool, fb->pool));

  hb->pool = pool;
  hb->tmppath = fb->tmppath;





  svn_txdelta_apply(svn_stream_empty(pool),
                    svn_stream_disown(fb->tmp_stream, pool),
                    fb->text_digest, ((void*)0), pool,
                    &hb->apply_handler, &hb->apply_baton);

  *handler_baton = hb;
  *handler = window_handler;
  return SVN_NO_ERROR;
}
