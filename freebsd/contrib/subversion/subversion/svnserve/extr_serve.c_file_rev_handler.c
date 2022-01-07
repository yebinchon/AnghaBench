
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_txdelta_window_handler_t ;
typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_2__ {int conn; int * pool; } ;
typedef TYPE_1__ file_revs_baton_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_ra_svn__svndiff_version (int ) ;
 int svn_ra_svn__write_cstring (int ,int *,char*) ;
 int svn_ra_svn__write_proplist (int ,int *,int *) ;
 int svn_ra_svn__write_tuple (int ,int *,char*,...) ;
 int svn_ra_svn_compression_level (int ) ;
 int * svn_stream_create (void*,int *) ;
 int svn_stream_set_close (int *,int ) ;
 int svn_stream_set_write (int *,int ) ;
 int svn_txdelta_to_svndiff3 (int *,void**,int *,int ,int ,int *) ;
 int svndiff_close_handler ;
 int svndiff_handler ;
 int write_prop_diffs (int ,int *,int *) ;

__attribute__((used)) static svn_error_t *file_rev_handler(void *baton, const char *path,
                                     svn_revnum_t rev, apr_hash_t *rev_props,
                                     svn_boolean_t merged_revision,
                                     svn_txdelta_window_handler_t *d_handler,
                                     void **d_baton,
                                     apr_array_header_t *prop_diffs,
                                     apr_pool_t *pool)
{
  file_revs_baton_t *frb = baton;
  svn_stream_t *stream;

  SVN_ERR(svn_ra_svn__write_tuple(frb->conn, pool, "cr(!",
                                  path, rev));
  SVN_ERR(svn_ra_svn__write_proplist(frb->conn, pool, rev_props));
  SVN_ERR(svn_ra_svn__write_tuple(frb->conn, pool, "!)(!"));
  SVN_ERR(write_prop_diffs(frb->conn, pool, prop_diffs));
  SVN_ERR(svn_ra_svn__write_tuple(frb->conn, pool, "!)b", merged_revision));


  frb->pool = pool;


  if (d_handler)
    {
      stream = svn_stream_create(baton, pool);
      svn_stream_set_write(stream, svndiff_handler);
      svn_stream_set_close(stream, svndiff_close_handler);

      svn_txdelta_to_svndiff3(d_handler, d_baton, stream,
                              svn_ra_svn__svndiff_version(frb->conn),
                              svn_ra_svn_compression_level(frb->conn), pool);
    }
  else
    SVN_ERR(svn_ra_svn__write_cstring(frb->conn, pool, ""));

  return SVN_NO_ERROR;
}
