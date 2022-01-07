
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int trail_t ;
typedef int svn_stream_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct rep_write_baton {int dummy; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int rep_contents_clear (int *,char const*,char const*,int *,int *) ;
 int rep_write_close_contents ;
 int rep_write_contents ;
 struct rep_write_baton* rep_write_get_baton (int *,char const*,char const*,int *,int *) ;
 int * svn_stream_create (struct rep_write_baton*,int *) ;
 int svn_stream_set_close (int *,int ) ;
 int svn_stream_set_write (int *,int ) ;

svn_error_t *
svn_fs_base__rep_contents_write_stream(svn_stream_t **ws_p,
                                       svn_fs_t *fs,
                                       const char *rep_key,
                                       const char *txn_id,
                                       svn_boolean_t use_trail_for_writes,
                                       trail_t *trail,
                                       apr_pool_t *pool)
{
  struct rep_write_baton *wb;


  SVN_ERR(rep_contents_clear(fs, rep_key, txn_id, trail, pool));


  wb = rep_write_get_baton(fs, rep_key, txn_id,
                           use_trail_for_writes ? trail : ((void*)0), pool);
  *ws_p = svn_stream_create(wb, pool);
  svn_stream_set_write(*ws_p, rep_write_contents);
  svn_stream_set_close(*ws_p, rep_write_close_contents);

  return SVN_NO_ERROR;
}
