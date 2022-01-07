
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct in6_aliasreq {int ifra_dstaddr; int ifra_addr; int ifra_name; } ;
struct addrinfo {TYPE_1__* ai_addr; } ;
typedef int in6_addreq ;
struct TYPE_2__ {int sa_len; } ;


 int SIOCSIFPHYADDR_IN6 ;
 scalar_t__ ioctl (int,int ,struct in6_aliasreq*) ;
 int memcpy (int *,TYPE_1__*,int ) ;
 int memset (struct in6_aliasreq*,int ,int) ;
 int name ;
 int strlcpy (int ,int ,int) ;
 int warn (char*) ;

__attribute__((used)) static void
in6_set_tunnel(int s, struct addrinfo *srcres, struct addrinfo *dstres)
{
 struct in6_aliasreq in6_addreq;

 memset(&in6_addreq, 0, sizeof(in6_addreq));
 strlcpy(in6_addreq.ifra_name, name, sizeof(in6_addreq.ifra_name));
 memcpy(&in6_addreq.ifra_addr, srcres->ai_addr, srcres->ai_addr->sa_len);
 memcpy(&in6_addreq.ifra_dstaddr, dstres->ai_addr,
     dstres->ai_addr->sa_len);

 if (ioctl(s, SIOCSIFPHYADDR_IN6, &in6_addreq) < 0)
  warn("SIOCSIFPHYADDR_IN6");
}
