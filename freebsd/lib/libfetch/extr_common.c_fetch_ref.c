
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ref; } ;
typedef TYPE_1__ conn_t ;



conn_t *
fetch_ref(conn_t *conn)
{

 ++conn->ref;
 return (conn);
}
