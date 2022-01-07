
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proto_conn {scalar_t__ pc_magic; int pc_ctx; TYPE_1__* pc_proto; } ;
struct TYPE_2__ {int (* prt_recv ) (int ,void*,size_t,int *) ;} ;


 int PJDLOG_ASSERT (int) ;
 scalar_t__ PROTO_CONN_MAGIC ;
 int errno ;
 int stub1 (int ,void*,size_t,int *) ;

int
proto_recv(const struct proto_conn *conn, void *data, size_t size)
{
 int ret;

 PJDLOG_ASSERT(conn != ((void*)0));
 PJDLOG_ASSERT(conn->pc_magic == PROTO_CONN_MAGIC);
 PJDLOG_ASSERT(conn->pc_proto != ((void*)0));
 PJDLOG_ASSERT(conn->pc_proto->prt_recv != ((void*)0));

 ret = conn->pc_proto->prt_recv(conn->pc_ctx, data, size, ((void*)0));
 if (ret != 0) {
  errno = ret;
  return (-1);
 }
 return (0);
}
