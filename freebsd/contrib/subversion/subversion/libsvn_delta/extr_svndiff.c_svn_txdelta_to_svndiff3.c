
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_txdelta_window_handler_t ;
typedef int svn_stream_t ;
struct encoder_baton {int version; int compression_level; int scratch_pool; int header_done; int * output; } ;
typedef int apr_pool_t ;


 int FALSE ;
 struct encoder_baton* apr_palloc (int *,int) ;
 int svn_pool_create (int *) ;
 int window_handler ;

void
svn_txdelta_to_svndiff3(svn_txdelta_window_handler_t *handler,
                        void **handler_baton,
                        svn_stream_t *output,
                        int svndiff_version,
                        int compression_level,
                        apr_pool_t *pool)
{
  struct encoder_baton *eb;

  eb = apr_palloc(pool, sizeof(*eb));
  eb->output = output;
  eb->header_done = FALSE;
  eb->scratch_pool = svn_pool_create(pool);
  eb->version = svndiff_version;
  eb->compression_level = compression_level;

  *handler = window_handler;
  *handler_baton = eb;
}
