
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_int ;
typedef int u_char ;
struct ip_print_demux_state {scalar_t__ advance; void* nh; scalar_t__ off; void* len; int const* cp; struct ip const* ip; } ;
struct ip {int dummy; } ;
typedef int netdissect_options ;


 int ip_print_demux (int *,struct ip_print_demux_state*) ;

void
ip_print_inner(netdissect_options *ndo,
        const u_char *bp,
        u_int length, u_int nh,
        const u_char *bp2)
{
 struct ip_print_demux_state ipd;

 ipd.ip = (const struct ip *)bp2;
 ipd.cp = bp;
 ipd.len = length;
 ipd.off = 0;
 ipd.nh = nh;
 ipd.advance = 0;

 ip_print_demux(ndo, &ipd);
}
