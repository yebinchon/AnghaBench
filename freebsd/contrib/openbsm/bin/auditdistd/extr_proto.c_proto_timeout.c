
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tv ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct proto_conn {scalar_t__ pc_magic; int * pc_proto; } ;


 int PJDLOG_ASSERT (int) ;
 scalar_t__ PROTO_CONN_MAGIC ;
 int SOL_SOCKET ;
 int SO_RCVTIMEO ;
 int SO_SNDTIMEO ;
 int proto_descriptor (struct proto_conn const*) ;
 scalar_t__ setsockopt (int,int ,int ,struct timeval*,int) ;

int
proto_timeout(const struct proto_conn *conn, int timeout)
{
 struct timeval tv;
 int fd;

 PJDLOG_ASSERT(conn != ((void*)0));
 PJDLOG_ASSERT(conn->pc_magic == PROTO_CONN_MAGIC);
 PJDLOG_ASSERT(conn->pc_proto != ((void*)0));

 fd = proto_descriptor(conn);
 if (fd < 0)
  return (-1);

 tv.tv_sec = timeout;
 tv.tv_usec = 0;
 if (setsockopt(fd, SOL_SOCKET, SO_SNDTIMEO, &tv, sizeof(tv)) < 0)
  return (-1);
 if (setsockopt(fd, SOL_SOCKET, SO_RCVTIMEO, &tv, sizeof(tv)) < 0)
  return (-1);

 return (0);
}
