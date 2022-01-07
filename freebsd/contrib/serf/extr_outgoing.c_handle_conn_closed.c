
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool; int closed_baton; int (* closed ) (TYPE_1__*,int ,int ,int ) ;} ;
typedef TYPE_1__ serf_connection_t ;
typedef int apr_status_t ;


 int stub1 (TYPE_1__*,int ,int ,int ) ;

__attribute__((used)) static void handle_conn_closed(serf_connection_t *conn, apr_status_t status)
{
    (*conn->closed)(conn, conn->closed_baton, status,
                    conn->pool);
}
