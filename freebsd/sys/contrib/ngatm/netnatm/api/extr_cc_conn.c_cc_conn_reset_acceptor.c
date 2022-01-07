
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccconn {TYPE_1__* acceptor; } ;
struct TYPE_2__ {int * accepted; } ;



void
cc_conn_reset_acceptor(struct ccconn *conn)
{
 if (conn->acceptor != ((void*)0)) {
  conn->acceptor->accepted = ((void*)0);
  conn->acceptor = ((void*)0);
 }
}
