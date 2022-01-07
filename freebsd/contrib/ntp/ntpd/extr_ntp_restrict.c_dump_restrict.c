
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct in_addr {int member_0; } ;
struct TYPE_8__ {int mask; int addr; } ;
struct TYPE_7__ {struct in_addr mask; struct in_addr addr; } ;
struct TYPE_9__ {TYPE_2__ v4; TYPE_1__ v6; } ;
struct TYPE_10__ {int link; int expire; int ippeerlimit; int mflags; int rflags; int count; TYPE_3__ u; } ;
typedef TYPE_4__ restrict_u ;


 int AF_INET ;
 int AF_INET6 ;
 int INET6_ADDRSTRLEN ;
 int htonl (int ) ;
 int inet_ntop (int ,struct in_addr*,char*,int) ;
 int mprintf (char*,TYPE_4__*,char*,char*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
dump_restrict(
 restrict_u * res,
 int is_ipv6
 )
{
 char as[INET6_ADDRSTRLEN];
 char ms[INET6_ADDRSTRLEN];

 if (is_ipv6) {
  inet_ntop(AF_INET6, &res->u.v6.addr, as, sizeof as);
  inet_ntop(AF_INET6, &res->u.v6.mask, ms, sizeof ms);
 } else {
  struct in_addr sia = { htonl(res->u.v4.addr) };
  struct in_addr sim = { htonl(res->u.v4.mask) };

  inet_ntop(AF_INET, &sia, as, sizeof as);
  inet_ntop(AF_INET, &sim, ms, sizeof ms);
 }
 mprintf("restrict node at %p: %s/%s count %d, rflags %05x, mflags %05x, ippeerlimit %d, expire %lu, next %p\n",
  res, as, ms, res->count, res->rflags, res->mflags,
  res->ippeerlimit, res->expire, res->link);
 return;
}
