
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_ra_serf__session_t ;
struct TYPE_2__ {int * session; } ;
typedef TYPE_1__ svn_ra_serf__connection_t ;
typedef int svn_error_t ;
typedef int serf_bucket_t ;
typedef int apr_status_t ;
typedef int apr_socket_t ;
typedef int apr_pool_t ;


 int conn_setup (int *,int **,int **,void*,int *) ;
 int save_error (int *,int *) ;
 int * svn_error_trace (int ) ;

apr_status_t
svn_ra_serf__conn_setup(apr_socket_t *sock,
                        serf_bucket_t **read_bkt,
                        serf_bucket_t **write_bkt,
                        void *baton,
                        apr_pool_t *pool)
{
  svn_ra_serf__connection_t *conn = baton;
  svn_ra_serf__session_t *session = conn->session;
  svn_error_t *err;

  err = svn_error_trace(conn_setup(sock,
                                   read_bkt,
                                   write_bkt,
                                   baton,
                                   pool));
  return save_error(session, err);
}
