
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct msghdr {int to_addr_len; int to_addr; int msg_iovlen; int msg_iov; } ;
struct TYPE_3__ {int pending_send; int pending_iocp; int fd; } ;
typedef TYPE_1__ isc_socket_t ;
typedef int SOCKADDR ;
typedef int LPWSAOVERLAPPED ;
typedef int IoCompletionInfo ;
typedef int DWORD ;



 int SOCKET_ERROR ;
 int WSAGetLastError () ;
 int WSASendTo (int ,int ,int ,int*,int,int *,int ,int ,int *) ;




int
internal_sendmsg(isc_socket_t *sock, IoCompletionInfo *lpo,
   struct msghdr *messagehdr, int flags, int *Error)
{
 int Result;
 DWORD BytesSent;
 DWORD Flags = flags;
 int total_sent;

 *Error = 0;
 Result = WSASendTo(sock->fd, messagehdr->msg_iov,
      messagehdr->msg_iovlen, &BytesSent,
      Flags, (SOCKADDR *)&messagehdr->to_addr,
      messagehdr->to_addr_len, (LPWSAOVERLAPPED)lpo,
      ((void*)0));

 total_sent = (int)BytesSent;


 if (Result == SOCKET_ERROR) {
  *Error = WSAGetLastError();

  switch (*Error) {
  case 130:
  case 128:
  case 129:
  case 131:
   sock->pending_iocp++;
   sock->pending_send++;
   break;

  default:
   return (-1);
   break;
  }
 } else {
  sock->pending_iocp++;
  sock->pending_send++;
 }

 if (lpo != ((void*)0))
  return (0);
 else
  return (total_sent);
}
