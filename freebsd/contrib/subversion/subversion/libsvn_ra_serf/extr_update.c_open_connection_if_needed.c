
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int num_conns; int pool; TYPE_2__** conns; int session_url; int context; } ;
typedef TYPE_1__ svn_ra_serf__session_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_status_t ;
struct TYPE_7__ {int last_status_code; int conn; TYPE_1__* session; int bkt_alloc; } ;


 int REQS_PER_CONN ;
 int * SVN_NO_ERROR ;
 TYPE_2__* apr_pcalloc (int ,int) ;
 int serf_bucket_allocator_create (int ,int *,int *) ;
 scalar_t__ serf_connection_create2 (int *,int ,int ,int ,TYPE_2__*,int ,TYPE_2__*,int ) ;
 int svn_ra_serf__conn_closed ;
 int svn_ra_serf__conn_setup ;
 int * svn_ra_serf__wrap_err (scalar_t__,int *) ;

__attribute__((used)) static svn_error_t *
open_connection_if_needed(svn_ra_serf__session_t *sess, int num_active_reqs)
{


  if (sess->num_conns == 1 ||
      ((num_active_reqs / REQS_PER_CONN) > sess->num_conns))
    {
      int cur = sess->num_conns;
      apr_status_t status;

      sess->conns[cur] = apr_pcalloc(sess->pool, sizeof(*sess->conns[cur]));
      sess->conns[cur]->bkt_alloc = serf_bucket_allocator_create(sess->pool,
                                                                 ((void*)0), ((void*)0));
      sess->conns[cur]->last_status_code = -1;
      sess->conns[cur]->session = sess;
      status = serf_connection_create2(&sess->conns[cur]->conn,
                                       sess->context,
                                       sess->session_url,
                                       svn_ra_serf__conn_setup,
                                       sess->conns[cur],
                                       svn_ra_serf__conn_closed,
                                       sess->conns[cur],
                                       sess->pool);
      if (status)
        return svn_ra_serf__wrap_err(status, ((void*)0));

      sess->num_conns++;
    }

  return SVN_NO_ERROR;
}
