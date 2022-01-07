
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_5__ {TYPE_4__* params; int conn; } ;
typedef TYPE_1__ connection_t ;
typedef int apr_pool_t ;
struct TYPE_6__ {int logger; } ;


 int get_client_info (int ,TYPE_4__*,int *) ;
 int logger__log_error (int ,int *,int *,int ) ;
 int * serve_interruptable (int *,TYPE_1__*,int *,int *) ;
 int * svn_error_trace (int *) ;

__attribute__((used)) static svn_error_t *
serve_socket(connection_t *connection,
             apr_pool_t *pool)
{

  svn_error_t *err = serve_interruptable(((void*)0), connection, ((void*)0), pool);
  if (err)
    logger__log_error(connection->params->logger, err, ((void*)0),
                      get_client_info(connection->conn, connection->params,
                                      pool));

  return svn_error_trace(err);
}
