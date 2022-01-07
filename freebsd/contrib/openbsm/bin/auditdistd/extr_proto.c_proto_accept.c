
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proto_conn {scalar_t__ pc_magic; scalar_t__ pc_side; int pc_ctx; TYPE_1__* pc_proto; } ;
struct TYPE_2__ {int (* prt_accept ) (int ,int *) ;} ;


 int PJDLOG_ASSERT (int) ;
 scalar_t__ PROTO_CONN_MAGIC ;
 scalar_t__ PROTO_SIDE_SERVER_LISTEN ;
 int PROTO_SIDE_SERVER_WORK ;
 int errno ;
 struct proto_conn* proto_alloc (TYPE_1__*,int ) ;
 int proto_free (struct proto_conn*) ;
 int stub1 (int ,int *) ;

int
proto_accept(struct proto_conn *conn, struct proto_conn **newconnp)
{
 struct proto_conn *newconn;
 int error;

 PJDLOG_ASSERT(conn != ((void*)0));
 PJDLOG_ASSERT(conn->pc_magic == PROTO_CONN_MAGIC);
 PJDLOG_ASSERT(conn->pc_side == PROTO_SIDE_SERVER_LISTEN);
 PJDLOG_ASSERT(conn->pc_proto != ((void*)0));
 PJDLOG_ASSERT(conn->pc_proto->prt_accept != ((void*)0));

 newconn = proto_alloc(conn->pc_proto, PROTO_SIDE_SERVER_WORK);
 if (newconn == ((void*)0))
  return (-1);

 error = conn->pc_proto->prt_accept(conn->pc_ctx, &newconn->pc_ctx);
 if (error != 0) {
  proto_free(newconn);
  errno = error;
  return (-1);
 }

 *newconnp = newconn;

 return (0);
}
