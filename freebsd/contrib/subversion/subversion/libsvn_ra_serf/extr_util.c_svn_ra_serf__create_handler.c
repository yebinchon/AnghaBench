
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * conns; } ;
typedef TYPE_1__ svn_ra_serf__session_t ;
struct TYPE_8__ {int done_delegate; struct TYPE_8__* done_delegate_baton; int conn; TYPE_1__* session; int * handler_pool; } ;
typedef TYPE_2__ svn_ra_serf__handler_t ;
typedef int apr_pool_t ;


 TYPE_2__* apr_pcalloc (int *,int) ;
 int apr_pool_cleanup_null ;
 int apr_pool_cleanup_register (int *,TYPE_2__*,int ,int ) ;
 int handler_cleanup ;
 int response_done ;

svn_ra_serf__handler_t *
svn_ra_serf__create_handler(svn_ra_serf__session_t *session,
                            apr_pool_t *result_pool)
{
  svn_ra_serf__handler_t *handler;

  handler = apr_pcalloc(result_pool, sizeof(*handler));
  handler->handler_pool = result_pool;

  apr_pool_cleanup_register(result_pool, handler, handler_cleanup,
                            apr_pool_cleanup_null);

  handler->session = session;
  handler->conn = session->conns[0];


  handler->done_delegate_baton = handler;
  handler->done_delegate = response_done;

  return handler;
}
