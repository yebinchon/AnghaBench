
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int sa; } ;
typedef TYPE_1__ sockaddr_u ;
typedef int saddr ;
typedef int on ;
struct TYPE_13__ {scalar_t__ ignore_packets; } ;
typedef TYPE_2__ endpt ;
typedef scalar_t__ SOCKET ;
typedef int GETSOCKNAME_SOCKLEN_TYPE ;


 scalar_t__ AF (TYPE_1__*) ;
 scalar_t__ AF_UNSPEC ;
 int DPRINTF (int,char*) ;
 int INT_LOOPBACK ;
 scalar_t__ INVALID_SOCKET ;
 int SOCKET_ERROR ;
 int SOCKLEN (TYPE_1__*) ;
 int SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_BROADCAST ;
 int closesocket (scalar_t__) ;
 int connect (scalar_t__,int *,int ) ;
 TYPE_2__* findclosestinterface (TYPE_1__*,int) ;
 TYPE_2__* getinterface (TYPE_1__*,int) ;
 int getsockname (scalar_t__,int *,int*) ;
 int setsockopt (scalar_t__,int ,int ,void*,int) ;
 scalar_t__ socket (scalar_t__,int ,int ) ;
 int stoa (TYPE_1__*) ;

__attribute__((used)) static endpt *
findlocalinterface(
 sockaddr_u * addr,
 int flags,
 int bcast
 )
{
 GETSOCKNAME_SOCKLEN_TYPE sockaddrlen;
 endpt * iface;
 sockaddr_u saddr;
 SOCKET s;
 int rtn;
 int on;

 DPRINTF(4, ("Finding interface for addr %s in list of addresses\n",
      stoa(addr)));
 if (AF_UNSPEC == AF(addr))
  return ((void*)0);

 s = socket(AF(addr), SOCK_DGRAM, 0);
 if (INVALID_SOCKET == s)
  return ((void*)0);





 if (bcast) {
  on = 1;
  if (SOCKET_ERROR == setsockopt(s, SOL_SOCKET,
      SO_BROADCAST,
      (void *)&on,
      sizeof(on))) {
   closesocket(s);
   return ((void*)0);
  }
 }

 rtn = connect(s, &addr->sa, SOCKLEN(addr));
 if (SOCKET_ERROR == rtn) {
  closesocket(s);
  return ((void*)0);
 }

 sockaddrlen = sizeof(saddr);
 rtn = getsockname(s, &saddr.sa, &sockaddrlen);
 closesocket(s);
 if (SOCKET_ERROR == rtn)
  return ((void*)0);

 DPRINTF(4, ("findlocalinterface: kernel maps %s to %s\n",
      stoa(addr), stoa(&saddr)));

 iface = getinterface(&saddr, flags);
 if (((void*)0) == iface || iface->ignore_packets)
  iface = findclosestinterface(&saddr,
          flags | INT_LOOPBACK);


 if (iface != ((void*)0) && iface->ignore_packets)
  iface = ((void*)0);

 return iface;
}
