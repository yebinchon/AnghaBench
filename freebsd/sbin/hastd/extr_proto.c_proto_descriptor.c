
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proto_conn {scalar_t__ pc_magic; int pc_ctx; TYPE_1__* pc_proto; } ;
struct TYPE_2__ {int (* prt_descriptor ) (int ) ;} ;


 int PJDLOG_ASSERT (int) ;
 scalar_t__ PROTO_CONN_MAGIC ;
 int stub1 (int ) ;

int
proto_descriptor(const struct proto_conn *conn)
{

 PJDLOG_ASSERT(conn != ((void*)0));
 PJDLOG_ASSERT(conn->pc_magic == PROTO_CONN_MAGIC);
 PJDLOG_ASSERT(conn->pc_proto != ((void*)0));
 PJDLOG_ASSERT(conn->pc_proto->prt_descriptor != ((void*)0));

 return (conn->pc_proto->prt_descriptor(conn->pc_ctx));
}
