
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proto_conn {scalar_t__ pc_magic; int pc_ctx; TYPE_1__* pc_proto; } ;
struct TYPE_2__ {int (* prt_send ) (int ,void const*,size_t,int) ;} ;


 int PJDLOG_ASSERT (int) ;
 scalar_t__ PROTO_CONN_MAGIC ;
 int errno ;
 int stub1 (int ,void const*,size_t,int) ;

int
proto_send(const struct proto_conn *conn, const void *data, size_t size)
{
 int error;

 PJDLOG_ASSERT(conn != ((void*)0));
 PJDLOG_ASSERT(conn->pc_magic == PROTO_CONN_MAGIC);
 PJDLOG_ASSERT(conn->pc_proto != ((void*)0));
 PJDLOG_ASSERT(conn->pc_proto->prt_send != ((void*)0));

 error = conn->pc_proto->prt_send(conn->pc_ctx, data, size, -1);
 if (error != 0) {
  errno = error;
  return (-1);
 }
 return (0);
}
