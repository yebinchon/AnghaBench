
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int client_info; int repository; int logger; } ;
typedef TYPE_1__ server_baton_t ;


 int logger__log_error (int ,int *,int ,int ) ;

__attribute__((used)) static void
log_error(svn_error_t *err, server_baton_t *server)
{
  logger__log_error(server->logger, err, server->repository,
                    server->client_info);
}
