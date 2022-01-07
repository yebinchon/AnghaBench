
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proto_conn {int pc_side; int pc_magic; struct proto* pc_proto; } ;
struct proto {int dummy; } ;


 int PJDLOG_ASSERT (int) ;
 int PROTO_CONN_MAGIC ;
 int PROTO_SIDE_CLIENT ;
 int PROTO_SIDE_SERVER_LISTEN ;
 int PROTO_SIDE_SERVER_WORK ;
 struct proto_conn* malloc (int) ;

__attribute__((used)) static struct proto_conn *
proto_alloc(struct proto *proto, int side)
{
 struct proto_conn *conn;

 PJDLOG_ASSERT(proto != ((void*)0));
 PJDLOG_ASSERT(side == PROTO_SIDE_CLIENT ||
     side == PROTO_SIDE_SERVER_LISTEN ||
     side == PROTO_SIDE_SERVER_WORK);

 conn = malloc(sizeof(*conn));
 if (conn != ((void*)0)) {
  conn->pc_proto = proto;
  conn->pc_side = side;
  conn->pc_magic = PROTO_CONN_MAGIC;
 }
 return (conn);
}
