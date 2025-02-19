
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u_short ;
struct in6_addr {int dummy; } ;
struct TYPE_7__ {int addr; int mask; } ;
struct TYPE_8__ {TYPE_1__ v6; } ;
struct TYPE_9__ {scalar_t__ expire; int mflags; TYPE_2__ u; struct TYPE_9__* link; } ;
typedef TYPE_3__ restrict_u ;


 scalar_t__ ADDR6_EQ (struct in6_addr*,int *) ;
 int INSIST (int) ;
 int MASK_IPV6_ADDR (struct in6_addr*,struct in6_addr const*,int *) ;
 int NTP_PORT ;
 int RESM_NTPONLY ;
 scalar_t__ current_time ;
 int free_res (TYPE_3__*,int const) ;
 TYPE_3__* restrictlist6 ;

__attribute__((used)) static restrict_u *
match_restrict6_addr(
 const struct in6_addr * addr,
 u_short port
 )
{
 const int v6 = 1;
 restrict_u * res;
 restrict_u * next;
 struct in6_addr masked;

 for (res = restrictlist6; res != ((void*)0); res = next) {
  next = res->link;
  INSIST(next != res);
  if (res->expire &&
      res->expire <= current_time)
   free_res(res, v6);
  MASK_IPV6_ADDR(&masked, addr, &res->u.v6.mask);
  if (ADDR6_EQ(&masked, &res->u.v6.addr)
      && (!(RESM_NTPONLY & res->mflags)
   || NTP_PORT == (int)port))
   break;
 }
 return res;
}
