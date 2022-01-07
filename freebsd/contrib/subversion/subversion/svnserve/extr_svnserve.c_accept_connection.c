
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int serve_params_t ;
typedef enum connection_handling_mode { ____Placeholder_connection_handling_mode } connection_handling_mode ;
struct TYPE_4__ {int ref_count; int usock; int * params; int * pool; } ;
typedef TYPE_1__ connection_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_socket_t ;
typedef int apr_proc_t ;
typedef int apr_pool_t ;


 scalar_t__ APR_CHILD_DONE ;
 int APR_NOWAIT ;
 scalar_t__ APR_STATUS_IS_ECONNABORTED (scalar_t__) ;
 scalar_t__ APR_STATUS_IS_ECONNRESET (scalar_t__) ;
 scalar_t__ APR_STATUS_IS_EINTR (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 scalar_t__ apr_proc_wait_all_procs (int *,int *,int *,int ,int *) ;
 scalar_t__ apr_socket_accept (int *,int *,int *) ;
 int connection_mode_fork ;
 int exit (int ) ;
 int * svn_error_wrap_apr (scalar_t__,int ) ;
 int * svn_pool_create (int *) ;
 scalar_t__ winservice_is_stopping () ;

__attribute__((used)) static svn_error_t *
accept_connection(connection_t **connection,
                  apr_socket_t *sock,
                  serve_params_t *params,
                  enum connection_handling_mode handling_mode,
                  apr_pool_t *pool)
{
  apr_status_t status;





  apr_pool_t *connection_pool = svn_pool_create(pool);
  *connection = apr_pcalloc(connection_pool, sizeof(**connection));
  (*connection)->pool = connection_pool;
  (*connection)->params = params;
  (*connection)->ref_count = 1;

  do
    {





      status = apr_socket_accept(&(*connection)->usock, sock,
                                 connection_pool);
      if (handling_mode == connection_mode_fork)
        {
          apr_proc_t proc;


          while (apr_proc_wait_all_procs(&proc, ((void*)0), ((void*)0), APR_NOWAIT,
            connection_pool) == APR_CHILD_DONE)
            ;
        }
    }
  while (APR_STATUS_IS_EINTR(status)
    || APR_STATUS_IS_ECONNABORTED(status)
    || APR_STATUS_IS_ECONNRESET(status));

  return status
       ? svn_error_wrap_apr(status, _("Can't accept client connection"))
       : SVN_NO_ERROR;
}
