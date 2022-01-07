
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proto_conn {scalar_t__ pc_magic; int pc_ctx; TYPE_1__* pc_proto; } ;
typedef int protoname ;
struct TYPE_2__ {int (* prt_recv ) (int ,unsigned char*,int,int*) ;} ;


 int PJDLOG_ASSERT (int) ;
 scalar_t__ PROTO_CONN_MAGIC ;
 int bzero (char*,int) ;
 int errno ;
 int proto_wrap (char*,int,int,struct proto_conn**) ;
 int stub1 (int ,unsigned char*,int,int*) ;

int
proto_connection_recv(const struct proto_conn *conn, bool client,
    struct proto_conn **newconnp)
{
 char protoname[128];
 int error, fd;

 PJDLOG_ASSERT(conn != ((void*)0));
 PJDLOG_ASSERT(conn->pc_magic == PROTO_CONN_MAGIC);
 PJDLOG_ASSERT(conn->pc_proto != ((void*)0));
 PJDLOG_ASSERT(conn->pc_proto->prt_recv != ((void*)0));
 PJDLOG_ASSERT(newconnp != ((void*)0));

 bzero(protoname, sizeof(protoname));

 error = conn->pc_proto->prt_recv(conn->pc_ctx,
     (unsigned char *)protoname, sizeof(protoname) - 1, &fd);
 if (error != 0) {
  errno = error;
  return (-1);
 }

 PJDLOG_ASSERT(fd >= 0);

 return (proto_wrap(protoname, client, fd, newconnp));
}
