
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int EAGAIN ;
 int EINTR ;
 int ENOTCONN ;
 int ETIMEDOUT ;
 int MSG_WAITALL ;
 int PJDLOG_ASSERT (int) ;
 int SHUT_WR ;
 scalar_t__ blocking_socket (int) ;
 int errno ;
 int proto_descriptor_recv (int,int*) ;
 int recv (int,unsigned char*,size_t,int ) ;
 int shutdown (int,int ) ;

int
proto_common_recv(int sock, unsigned char *data, size_t size, int *fdp)
{
 ssize_t done;

 PJDLOG_ASSERT(sock >= 0);

 if (data == ((void*)0)) {


  PJDLOG_ASSERT(size == 0);

  if (shutdown(sock, SHUT_WR) == -1)
   return (errno);
  return (0);
 }

 PJDLOG_ASSERT(data != ((void*)0));
 PJDLOG_ASSERT(size > 0);

 do {
  done = recv(sock, data, size, MSG_WAITALL);
 } while (done == -1 && errno == EINTR);
 if (done == 0) {
  return (ENOTCONN);
 } else if (done == -1) {






  if (errno == EAGAIN && blocking_socket(sock))
   errno = ETIMEDOUT;
  return (errno);
 }
 if (fdp == ((void*)0))
  return (0);
 return (proto_descriptor_recv(sock, fdp));
}
