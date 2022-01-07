
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_in {int sin_family; scalar_t__ sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef int listen_addr ;
typedef scalar_t__ evutil_socket_t ;
typedef int ev_socklen_t ;
typedef int connect_addr ;


 int AF_INET ;
 int AF_UNIX ;
 int EAFNOSUPPORT ;
 int ECONNABORTED ;
 int EINVAL ;
 int ERR (int ) ;
 int EVUTIL_SET_SOCKET_ERROR (int) ;
 int EVUTIL_SOCKET_ERROR () ;
 int INADDR_LOOPBACK ;
 scalar_t__ accept (scalar_t__,struct sockaddr*,int*) ;
 int bind (scalar_t__,struct sockaddr*,int) ;
 int connect (scalar_t__,struct sockaddr*,int) ;
 int evutil_closesocket (scalar_t__) ;
 int getsockname (scalar_t__,struct sockaddr*,int*) ;
 scalar_t__ htonl (int ) ;
 int listen (scalar_t__,int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 scalar_t__ socket (int,int,int ) ;

int
evutil_ersatz_socketpair_(int family, int type, int protocol,
    evutil_socket_t fd[2])
{
 evutil_socket_t listener = -1;
 evutil_socket_t connector = -1;
 evutil_socket_t acceptor = -1;
 struct sockaddr_in listen_addr;
 struct sockaddr_in connect_addr;
 ev_socklen_t size;
 int saved_errno = -1;

 if (protocol
  || (family != AF_INET



  )) {
  EVUTIL_SET_SOCKET_ERROR(EAFNOSUPPORT);
  return -1;
 }
 if (!fd) {
  EVUTIL_SET_SOCKET_ERROR(EINVAL);
  return -1;
 }

 listener = socket(AF_INET, type, 0);
 if (listener < 0)
  return -1;
 memset(&listen_addr, 0, sizeof(listen_addr));
 listen_addr.sin_family = AF_INET;
 listen_addr.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
 listen_addr.sin_port = 0;
 if (bind(listener, (struct sockaddr *) &listen_addr, sizeof (listen_addr))
  == -1)
  goto tidy_up_and_fail;
 if (listen(listener, 1) == -1)
  goto tidy_up_and_fail;

 connector = socket(AF_INET, type, 0);
 if (connector < 0)
  goto tidy_up_and_fail;

 size = sizeof(connect_addr);
 if (getsockname(listener, (struct sockaddr *) &connect_addr, &size) == -1)
  goto tidy_up_and_fail;
 if (size != sizeof (connect_addr))
  goto abort_tidy_up_and_fail;
 if (connect(connector, (struct sockaddr *) &connect_addr,
    sizeof(connect_addr)) == -1)
  goto tidy_up_and_fail;

 size = sizeof(listen_addr);
 acceptor = accept(listener, (struct sockaddr *) &listen_addr, &size);
 if (acceptor < 0)
  goto tidy_up_and_fail;
 if (size != sizeof(listen_addr))
  goto abort_tidy_up_and_fail;


 if (getsockname(connector, (struct sockaddr *) &connect_addr, &size) == -1)
  goto tidy_up_and_fail;
 if (size != sizeof (connect_addr)
  || listen_addr.sin_family != connect_addr.sin_family
  || listen_addr.sin_addr.s_addr != connect_addr.sin_addr.s_addr
  || listen_addr.sin_port != connect_addr.sin_port)
  goto abort_tidy_up_and_fail;
 evutil_closesocket(listener);
 fd[0] = connector;
 fd[1] = acceptor;

 return 0;

 abort_tidy_up_and_fail:
 saved_errno = ECONNABORTED;
 tidy_up_and_fail:
 if (saved_errno < 0)
  saved_errno = EVUTIL_SOCKET_ERROR();
 if (listener != -1)
  evutil_closesocket(listener);
 if (connector != -1)
  evutil_closesocket(connector);
 if (acceptor != -1)
  evutil_closesocket(acceptor);

 EVUTIL_SET_SOCKET_ERROR(saved_errno);
 return -1;

}
