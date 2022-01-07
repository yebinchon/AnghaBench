
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ icmp_type; int icmp_code; } ;
union ad_u {TYPE_1__ icmp; } ;
typedef int u_int ;
struct interface {int dummy; } ;
typedef int naddr ;


 scalar_t__ ICMP_ROUTERADVERT ;
 scalar_t__ ICMP_ROUTERSOLICIT ;
 int naddr_ntoa (int ) ;
 int trace_pkt (char*,char const*,int ,int ,...) ;
 int trace_rdisc (char const*,int ,int ,struct interface*,union ad_u*,int ) ;

__attribute__((used)) static struct interface *
ck_icmp(const char *act,
 naddr from,
 struct interface *ifp,
 naddr to,
 union ad_u *p,
 u_int len)
{
 const char *type;


 if (p->icmp.icmp_type == ICMP_ROUTERADVERT) {
  type = "advertisement";
 } else if (p->icmp.icmp_type == ICMP_ROUTERSOLICIT) {
  type = "solicitation";
 } else {
  return 0;
 }

 if (p->icmp.icmp_code != 0) {
  trace_pkt("unrecognized ICMP Router %s code=%d from %s to %s",
     type, p->icmp.icmp_code,
     naddr_ntoa(from), naddr_ntoa(to));
  return 0;
 }

 trace_rdisc(act, from, to, ifp, p, len);

 if (ifp == ((void*)0))
  trace_pkt("unknown interface for router-discovery %s"
     " from %s to %s",
     type, naddr_ntoa(from), naddr_ntoa(to));

 return ifp;
}
