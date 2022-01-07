
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ cmdname; } ;
typedef TYPE_1__ svn_ra_svn__cmd_entry_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_10__ {int conn; int baton; TYPE_8__* params; int pool; int usock; } ;
typedef TYPE_2__ connection_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_11__ {int max_response_size; int max_request_size; int error_check_interval; int zero_copy_limit; int compression_level; } ;


 int APR_SO_KEEPALIVE ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int * apr_hash_make (int *) ;
 scalar_t__ apr_socket_opt_set (int ,int ,int) ;
 int * construct_server_baton (int *,int ,TYPE_8__*,int *) ;
 TYPE_1__* main_commands ;
 int * svn_error_trace (int *) ;
 int svn_hash_sets (int *,scalar_t__,TYPE_1__ const*) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_ra_svn__handle_command (scalar_t__*,int *,int ,int ,scalar_t__,int *) ;
 int * svn_ra_svn__has_command (scalar_t__*,scalar_t__*,int ,int *) ;
 int svn_ra_svn_create_conn5 (int ,int *,int *,int ,int ,int ,int ,int ,int ) ;

svn_error_t *
serve_interruptable(svn_boolean_t *terminate_p,
                    connection_t *connection,
                    svn_boolean_t (* is_busy)(connection_t *),
                    apr_pool_t *pool)
{
  svn_boolean_t terminate = FALSE;
  svn_error_t *err = ((void*)0);
  const svn_ra_svn__cmd_entry_t *command;
  apr_pool_t *iterpool = svn_pool_create(pool);


  apr_hash_t *cmd_hash = apr_hash_make(pool);
  for (command = main_commands; command->cmdname; command++)
    svn_hash_sets(cmd_hash, command->cmdname, command);


  if (! connection->conn)
    {
      apr_status_t ar;
      ar = apr_socket_opt_set(connection->usock, APR_SO_KEEPALIVE, 1);
      if (ar)
        {

        }


      connection->conn
        = svn_ra_svn_create_conn5(connection->usock, ((void*)0), ((void*)0),
                                  connection->params->compression_level,
                                  connection->params->zero_copy_limit,
                                  connection->params->error_check_interval,
                                  connection->params->max_request_size,
                                  connection->params->max_response_size,
                                  connection->pool);


      err = construct_server_baton(&connection->baton, connection->conn,
                                   connection->params, pool);
    }


  if (err)
    terminate = TRUE;


  while (!terminate && !err)
    {
      svn_pool_clear(iterpool);
      if (is_busy && is_busy(connection))
        {
          svn_boolean_t has_command;




          err = svn_ra_svn__has_command(&has_command, &terminate,
                                        connection->conn, iterpool);
          if (!err && has_command)
            err = svn_ra_svn__handle_command(&terminate, cmd_hash,
                                             connection->baton,
                                             connection->conn,
                                             FALSE, iterpool);

          break;
        }
      else
        {





          err = svn_ra_svn__handle_command(&terminate, cmd_hash,
                                           connection->baton,
                                           connection->conn,
                                           FALSE, iterpool);
        }
    }


  svn_pool_destroy(iterpool);
  if (terminate_p)
    *terminate_p = terminate;

  return svn_error_trace(err);
}
