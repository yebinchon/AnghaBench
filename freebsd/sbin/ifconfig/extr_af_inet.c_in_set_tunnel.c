
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct in_aliasreq {int ifra_dstaddr; int ifra_addr; int ifra_name; } ;
struct addrinfo {TYPE_1__* ai_addr; } ;
typedef int addreq ;
struct TYPE_2__ {int sa_len; } ;


 int IFNAMSIZ ;
 int SIOCSIFPHYADDR ;
 scalar_t__ ioctl (int,int ,struct in_aliasreq*) ;
 int memcpy (int *,TYPE_1__*,int ) ;
 int memset (struct in_aliasreq*,int ,int) ;
 int name ;
 int strlcpy (int ,int ,int ) ;
 int warn (char*) ;

__attribute__((used)) static void
in_set_tunnel(int s, struct addrinfo *srcres, struct addrinfo *dstres)
{
 struct in_aliasreq addreq;

 memset(&addreq, 0, sizeof(addreq));
 strlcpy(addreq.ifra_name, name, IFNAMSIZ);
 memcpy(&addreq.ifra_addr, srcres->ai_addr, srcres->ai_addr->sa_len);
 memcpy(&addreq.ifra_dstaddr, dstres->ai_addr, dstres->ai_addr->sa_len);

 if (ioctl(s, SIOCSIFPHYADDR, &addreq) < 0)
  warn("SIOCSIFPHYADDR");
}
