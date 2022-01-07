
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int session; } ;
typedef TYPE_1__ svn_ra_serf__connection_t ;
typedef int svn_error_t ;
typedef int serf_connection_t ;
typedef int apr_status_t ;
typedef int apr_pool_t ;


 int connection_closed (TYPE_1__*,int ,int *) ;
 int save_error (int ,int *) ;
 int * svn_error_trace (int ) ;

void
svn_ra_serf__conn_closed(serf_connection_t *conn,
                         void *closed_baton,
                         apr_status_t why,
                         apr_pool_t *pool)
{
  svn_ra_serf__connection_t *ra_conn = closed_baton;
  svn_error_t *err;

  err = svn_error_trace(connection_closed(ra_conn, why, pool));

  (void) save_error(ra_conn->session, err);
}
