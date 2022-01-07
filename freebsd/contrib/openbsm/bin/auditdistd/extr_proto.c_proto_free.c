
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proto_conn {scalar_t__ pc_magic; scalar_t__ pc_side; int * pc_proto; } ;


 int PJDLOG_ASSERT (int) ;
 scalar_t__ PROTO_CONN_MAGIC ;
 scalar_t__ PROTO_SIDE_CLIENT ;
 scalar_t__ PROTO_SIDE_SERVER_LISTEN ;
 scalar_t__ PROTO_SIDE_SERVER_WORK ;
 int bzero (struct proto_conn*,int) ;
 int free (struct proto_conn*) ;

__attribute__((used)) static void
proto_free(struct proto_conn *conn)
{

 PJDLOG_ASSERT(conn != ((void*)0));
 PJDLOG_ASSERT(conn->pc_magic == PROTO_CONN_MAGIC);
 PJDLOG_ASSERT(conn->pc_side == PROTO_SIDE_CLIENT ||
     conn->pc_side == PROTO_SIDE_SERVER_LISTEN ||
     conn->pc_side == PROTO_SIDE_SERVER_WORK);
 PJDLOG_ASSERT(conn->pc_proto != ((void*)0));

 bzero(conn, sizeof(*conn));
 free(conn);
}
