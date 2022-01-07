
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_txdelta_window_handler_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
struct file_baton_t {int pool; int local_abspath; int digest; scalar_t__ writing; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int svn_stream_empty (int ) ;
 int svn_stream_open_writable (int **,int ,int ,int ) ;
 int svn_txdelta_apply (int ,int *,int ,int ,int ,int *,void**) ;

__attribute__((used)) static svn_error_t *
file_textdelta(void *file_baton,
               const char *base_checksum,
               apr_pool_t *result_pool,
               svn_txdelta_window_handler_t *handler,
               void **handler_baton)
{
  struct file_baton_t *fb = file_baton;
  svn_stream_t *target;

  SVN_ERR_ASSERT(! fb->writing);

  SVN_ERR(svn_stream_open_writable(&target, fb->local_abspath, fb->pool,
                                   fb->pool));

  fb->writing = TRUE;
  svn_txdelta_apply(svn_stream_empty(fb->pool) ,
                    target,
                    fb->digest,
                    fb->local_abspath,
                    fb->pool,

                    handler, handler_baton);

  return SVN_NO_ERROR;
}
