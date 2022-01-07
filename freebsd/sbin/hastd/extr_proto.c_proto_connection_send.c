
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proto_conn {scalar_t__ pc_magic; int pc_ctx; TYPE_1__* pc_proto; } ;
struct TYPE_2__ {int (* prt_send ) (int ,unsigned char const*,scalar_t__,int) ;char* prt_name; } ;


 int PJDLOG_ASSERT (int) ;
 scalar_t__ PROTO_CONN_MAGIC ;
 int errno ;
 int proto_close (struct proto_conn*) ;
 int proto_descriptor (struct proto_conn*) ;
 scalar_t__ strlen (char const*) ;
 int stub1 (int ,unsigned char const*,scalar_t__,int) ;

int
proto_connection_send(const struct proto_conn *conn, struct proto_conn *mconn)
{
 const char *protoname;
 int ret, fd;

 PJDLOG_ASSERT(conn != ((void*)0));
 PJDLOG_ASSERT(conn->pc_magic == PROTO_CONN_MAGIC);
 PJDLOG_ASSERT(conn->pc_proto != ((void*)0));
 PJDLOG_ASSERT(conn->pc_proto->prt_send != ((void*)0));
 PJDLOG_ASSERT(mconn != ((void*)0));
 PJDLOG_ASSERT(mconn->pc_magic == PROTO_CONN_MAGIC);
 PJDLOG_ASSERT(mconn->pc_proto != ((void*)0));
 fd = proto_descriptor(mconn);
 PJDLOG_ASSERT(fd >= 0);
 protoname = mconn->pc_proto->prt_name;
 PJDLOG_ASSERT(protoname != ((void*)0));

 ret = conn->pc_proto->prt_send(conn->pc_ctx,
     (const unsigned char *)protoname, strlen(protoname) + 1, fd);
 proto_close(mconn);
 if (ret != 0) {
  errno = ret;
  return (-1);
 }
 return (0);
}
