
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_txdelta_window_handler_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
struct file_baton {int pool; int base_checksum; int dump_text; struct dump_edit_baton* eb; } ;
struct dump_edit_baton {int delta_file; } ;
typedef int apr_pool_t ;


 int SVN_DELTA_COMPRESSION_LEVEL_DEFAULT ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int apr_pstrdup (int ,char const*) ;
 int * svn_stream_from_aprfile2 (int ,int ,int *) ;
 int svn_txdelta_to_svndiff3 (int *,void**,int *,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
apply_textdelta(void *file_baton, const char *base_checksum,
                apr_pool_t *pool,
                svn_txdelta_window_handler_t *handler,
                void **handler_baton)
{
  struct file_baton *fb = file_baton;
  struct dump_edit_baton *eb = fb->eb;
  svn_stream_t *delta_filestream;


  delta_filestream = svn_stream_from_aprfile2(eb->delta_file, TRUE, pool);


  svn_txdelta_to_svndiff3(handler, handler_baton,
                          delta_filestream, 0,
                          SVN_DELTA_COMPRESSION_LEVEL_DEFAULT, pool);


  fb->dump_text = TRUE;
  fb->base_checksum = apr_pstrdup(fb->pool, base_checksum);

  return SVN_NO_ERROR;
}
