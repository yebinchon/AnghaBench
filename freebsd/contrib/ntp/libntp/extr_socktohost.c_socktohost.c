
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct addrinfo {int ai_addr; int ai_addrlen; struct addrinfo* ai_next; int ai_flags; int ai_socktype; int ai_protocol; int ai_family; } ;
struct TYPE_10__ {int sa; } ;
typedef TYPE_1__ sockaddr_u ;
typedef int addr ;


 int AF (TYPE_1__ const*) ;
 int AI_ADDRCONFIG ;
 int AI_CANONNAME ;
 int EAI_BADFLAGS ;
 int EAI_NODATA ;
 int EAI_NONAME ;
 int INSIST (int ) ;
 int IPPROTO_UDP ;
 int LIB_BUFLENGTH ;
 int LIB_GETBUF (char*) ;
 int NI_DGRAM ;
 int NI_NAMEREQD ;
 int SOCKLEN (TYPE_1__ const*) ;
 int SOCK_DGRAM ;
 scalar_t__ SOCK_EQ (TYPE_1__ const*,TYPE_1__*) ;
 int TRACE (int,char*) ;
 int ZERO (struct addrinfo) ;
 int ZERO_SOCK (TYPE_1__*) ;
 int errno ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char*,char const*,struct addrinfo*,struct addrinfo**) ;
 scalar_t__ getnameinfo (int *,int ,char*,int ,int *,int ,int) ;
 int memcpy (TYPE_1__*,int ,size_t) ;
 size_t min (int,int ) ;
 int snprintf (char*,int ,char*,char*,char*) ;
 int socket_errno () ;
 char* stoa (TYPE_1__ const*) ;

const char *
socktohost(
 const sockaddr_u *sock
 )
{
 const char svc[] = "ntp";
 char * pbuf;
 char * pliar;
 int gni_flags;
 struct addrinfo hints;
 struct addrinfo * alist;
 struct addrinfo * ai;
 sockaddr_u addr;
 size_t octets;
 int a_info;
 int saved_errno;

 saved_errno = socket_errno();


 LIB_GETBUF(pbuf);
 gni_flags = NI_DGRAM | NI_NAMEREQD;
 if (getnameinfo(&sock->sa, SOCKLEN(sock), pbuf, LIB_BUFLENGTH,
   ((void*)0), 0, gni_flags)) {
  errno = saved_errno;
  return stoa(sock);
 }

 TRACE(1, ("%s reversed to %s\n", stoa(sock), pbuf));





 ZERO(hints);
 hints.ai_family = AF(sock);
 hints.ai_protocol = IPPROTO_UDP;
 hints.ai_socktype = SOCK_DGRAM;
 hints.ai_flags = 0;
 alist = ((void*)0);

 a_info = getaddrinfo(pbuf, svc, &hints, &alist);
 if (a_info == EAI_NONAME



    ) {
  hints.ai_flags = AI_CANONNAME;



  a_info = getaddrinfo(pbuf, svc, &hints, &alist);
 }







 if (a_info)
  goto forward_fail;

 INSIST(alist != ((void*)0));

 for (ai = alist; ai != ((void*)0); ai = ai->ai_next) {







  ZERO_SOCK(&addr);
  octets = min(sizeof(addr), ai->ai_addrlen);
  memcpy(&addr, ai->ai_addr, octets);
  if (SOCK_EQ(sock, &addr))
   break;
 }
 freeaddrinfo(alist);

 if (ai != ((void*)0)) {
  errno = saved_errno;
  return pbuf;
 }

    forward_fail:
 TRACE(1, ("%s forward check lookup fail: %s\n", pbuf,
    gai_strerror(a_info)));
 LIB_GETBUF(pliar);
 snprintf(pliar, LIB_BUFLENGTH, "%s (%s)", stoa(sock), pbuf);

 errno = saved_errno;
 return pliar;
}
