
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {int msg_iovlen; int msg_flags; scalar_t__ msg_controllen; int * msg_control; struct iovec* msg_iov; scalar_t__ msg_namelen; int * msg_name; } ;
struct iovec {size_t iov_len; void* iov_base; } ;
typedef int ssize_t ;
typedef int SOCKET ;


 scalar_t__ EINTR ;
 size_t INT_MAX ;
 int MSG_TRUNC ;
 int SOCKET_ERROR ;
 int SOCK_DEBUG_MESSAGE (char*) ;
 scalar_t__ errno ;
 int pcap_snprintf (char*,int,char*,...) ;
 int recv (int ,void*,size_t,int ) ;
 int recvmsg (int ,struct msghdr*,int ) ;
 int sock_geterror (char*,char*,int) ;

int sock_recv_dgram(SOCKET sock, void *buffer, size_t size,
    char *errbuf, int errbuflen)
{
 ssize_t nread;

 struct msghdr message;
 struct iovec iov;


 if (size == 0)
 {
  SOCK_DEBUG_MESSAGE("I have been requested to read zero bytes");
  return 0;
 }
 if (size > INT_MAX)
 {
  if (errbuf)
  {
   pcap_snprintf(errbuf, errbuflen,
       "Can't read more than %u bytes with sock_recv_dgram",
       INT_MAX);
  }
  return -1;
 }
 message.msg_name = ((void*)0);
 message.msg_namelen = 0;
 iov.iov_base = buffer;
 iov.iov_len = size;
 message.msg_iov = &iov;
 message.msg_iovlen = 1;







 nread = recvmsg(sock, &message, 0);
 if (nread == -1)
 {
  if (errno == EINTR)
   return -3;
  sock_geterror("recv(): ", errbuf, errbuflen);
  return -1;
 }
 return (int)nread;
}
