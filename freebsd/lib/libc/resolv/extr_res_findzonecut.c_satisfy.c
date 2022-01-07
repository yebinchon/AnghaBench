
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef union res_sockaddr_union {int dummy; } res_sockaddr_union ;
typedef int rrset_ns ;
struct TYPE_7__ {int name; } ;
typedef TYPE_1__ rr_ns ;
typedef int res_state ;


 int DPRINTF (char*) ;
 TYPE_1__* HEAD (int ) ;
 TYPE_1__* NEXT (TYPE_1__*,int ) ;
 int add_addrs (int ,TYPE_1__*,union res_sockaddr_union*,int) ;
 TYPE_1__* find_ns (int *,char const*) ;
 int link ;
 int ns_samename (int ,char const*) ;

__attribute__((used)) static int
satisfy(res_state statp, const char *mname, rrset_ns *nsrrsp,
 union res_sockaddr_union *addrs, int naddrs)
{
 rr_ns *nsrr;
 int n, x;

 n = 0;
 nsrr = find_ns(nsrrsp, mname);
 if (nsrr != ((void*)0)) {
  x = add_addrs(statp, nsrr, addrs, naddrs);
  addrs += x;
  naddrs -= x;
  n += x;
 }
 for (nsrr = HEAD(*nsrrsp);
      nsrr != ((void*)0) && naddrs > 0;
      nsrr = NEXT(nsrr, link))
  if (ns_samename(nsrr->name, mname) != 1) {
   x = add_addrs(statp, nsrr, addrs, naddrs);
   addrs += x;
   naddrs -= x;
   n += x;
  }
 DPRINTF(("satisfy(%s): %d", mname, n));
 return (n);
}
