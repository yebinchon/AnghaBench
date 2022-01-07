
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ fd; TYPE_2__* manager; int pf; } ;
typedef TYPE_3__ isc_socket_t ;
typedef int isc_result_t ;
struct TYPE_11__ {int received_bytes; int acceptbuffer; int overlapped; TYPE_1__* adev; } ;
struct TYPE_9__ {int iocp_total; } ;
struct TYPE_8__ {TYPE_3__* newsocket; } ;
typedef scalar_t__ SOCKET ;
typedef int SOCKADDR_STORAGE ;
typedef int LPOVERLAPPED ;
typedef int LPDWORD ;
typedef TYPE_4__ IoCompletionInfo ;


 scalar_t__ INVALID_SOCKET ;
 int IPPROTO_TCP ;
 int ISCAcceptEx (scalar_t__,scalar_t__,int ,int ,int,int,int ,int ) ;
 int ISC_R_FAILURE ;
 int ISC_R_SUCCESS ;
 int InterlockedDecrement (int *) ;
 int SOCK_STREAM ;
 int closesocket (scalar_t__) ;
 int iocompletionport_update (TYPE_3__*) ;
 int memset (int *,int ,int) ;
 scalar_t__ socket (int ,int ,int ) ;

__attribute__((used)) static isc_result_t
restart_accept(isc_socket_t *parent, IoCompletionInfo *lpo)
{
 isc_socket_t *nsock = lpo->adev->newsocket;
 SOCKET new_fd;







 new_fd = socket(parent->pf, SOCK_STREAM, IPPROTO_TCP);
 if (nsock->fd == INVALID_SOCKET) {
  return (ISC_R_FAILURE);
 }
 closesocket(nsock->fd);
 nsock->fd = new_fd;

 memset(&lpo->overlapped, 0, sizeof(lpo->overlapped));

 ISCAcceptEx(parent->fd,
      nsock->fd,
      lpo->acceptbuffer,
      0,
      sizeof(SOCKADDR_STORAGE) + 16,
      sizeof(SOCKADDR_STORAGE) + 16,
      (LPDWORD)&lpo->received_bytes,
      (LPOVERLAPPED)lpo
      );

 InterlockedDecrement(&nsock->manager->iocp_total);
 iocompletionport_update(nsock);

 return (ISC_R_SUCCESS);
}
