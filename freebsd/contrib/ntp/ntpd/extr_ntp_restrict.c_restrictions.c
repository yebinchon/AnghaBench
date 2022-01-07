
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct in6_addr {int dummy; } ;
typedef int sockaddr_u ;
struct TYPE_8__ {int ippeerlimit; int rflags; int count; } ;
typedef TYPE_1__ restrict_u ;
struct TYPE_9__ {int ippeerlimit; int rflags; } ;
typedef TYPE_2__ r4addr ;


 int DPRINTF (int,char*) ;
 scalar_t__ IN6_IS_ADDR_MULTICAST (struct in6_addr*) ;
 int INSIST (int ) ;
 scalar_t__ IN_CLASSD (int ) ;
 scalar_t__ IS_IPV4 (int *) ;
 scalar_t__ IS_IPV6 (int *) ;
 struct in6_addr* PSOCK_ADDR6 (int *) ;
 int REQUIRE (int) ;
 int RES_IGNORE ;
 int SRCADR (int *) ;
 int SRCPORT (int *) ;
 TYPE_1__* match_restrict4_addr (int ,int ) ;
 TYPE_1__* match_restrict6_addr (struct in6_addr*,int ) ;
 int res_calls ;
 int res_found ;
 int res_not_found ;
 TYPE_1__ restrict_def4 ;
 TYPE_1__ restrict_def6 ;
 int stoa (int *) ;

void
restrictions(
 sockaddr_u *srcadr,
 r4addr *r4a
 )
{
 restrict_u *match;
 struct in6_addr *pin6;

 REQUIRE(((void*)0) != r4a);

 res_calls++;
 r4a->rflags = RES_IGNORE;
 r4a->ippeerlimit = 0;

 DPRINTF(1, ("restrictions: looking up %s\n", stoa(srcadr)));


 if (IS_IPV4(srcadr)) {





  if (IN_CLASSD(SRCADR(srcadr))) {
   DPRINTF(1, ("restrictions: srcadr %s is multicast\n", stoa(srcadr)));
   r4a->ippeerlimit = 2;
   return;
  }

  match = match_restrict4_addr(SRCADR(srcadr),
          SRCPORT(srcadr));

  INSIST(match != ((void*)0));

  match->count++;





  if (&restrict_def4 == match)
   res_not_found++;
  else
   res_found++;
  r4a->rflags = match->rflags;
  r4a->ippeerlimit = match->ippeerlimit;
 }


 if (IS_IPV6(srcadr)) {
  pin6 = PSOCK_ADDR6(srcadr);






  if (IN6_IS_ADDR_MULTICAST(pin6))
   return;

  match = match_restrict6_addr(pin6, SRCPORT(srcadr));
  INSIST(match != ((void*)0));
  match->count++;
  if (&restrict_def6 == match)
   res_not_found++;
  else
   res_found++;
  r4a->rflags = match->rflags;
  r4a->ippeerlimit = match->ippeerlimit;
 }
 return;
}
