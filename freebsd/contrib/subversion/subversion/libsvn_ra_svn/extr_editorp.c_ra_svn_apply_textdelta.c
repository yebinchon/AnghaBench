
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_txdelta_window_handler_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
struct TYPE_5__ {TYPE_3__* conn; int token; int eb; } ;
typedef TYPE_1__ ra_svn_baton_t ;
typedef int apr_pool_t ;
struct TYPE_6__ {int compression_level; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int check_for_error (int ,int *) ;
 int ra_svn_svndiff_close_handler ;
 int ra_svn_svndiff_handler ;
 int svn_ra_svn__svndiff_version (TYPE_3__*) ;
 int svn_ra_svn__write_cmd_apply_textdelta (TYPE_3__*,int *,int ,char const*) ;
 int * svn_stream_create (TYPE_1__*,int *) ;
 int svn_stream_set_close (int *,int ) ;
 int svn_stream_set_write (int *,int ) ;
 int svn_txdelta_to_svndiff3 (int *,void**,int *,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *ra_svn_apply_textdelta(void *file_baton,
                                           const char *base_checksum,
                                           apr_pool_t *pool,
                                           svn_txdelta_window_handler_t *wh,
                                           void **wh_baton)
{
  ra_svn_baton_t *b = file_baton;
  svn_stream_t *diff_stream;


  SVN_ERR(check_for_error(b->eb, pool));
  SVN_ERR(svn_ra_svn__write_cmd_apply_textdelta(b->conn, pool, b->token,
                                                base_checksum));




  diff_stream = svn_stream_create(b, pool);
  svn_stream_set_write(diff_stream, ra_svn_svndiff_handler);
  svn_stream_set_close(diff_stream, ra_svn_svndiff_close_handler);

  svn_txdelta_to_svndiff3(wh, wh_baton, diff_stream,
                          svn_ra_svn__svndiff_version(b->conn),
                          b->conn->compression_level, pool);
  return SVN_NO_ERROR;
}
