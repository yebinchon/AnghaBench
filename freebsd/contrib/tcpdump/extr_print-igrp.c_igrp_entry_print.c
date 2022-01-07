
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct igrprte {int igr_hct; int igr_ld; int igr_rel; int igr_mtu; int igr_bw; int igr_dly; int * igr_net; } ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int ) ;
 int EXTRACT_24BITS (int ) ;
 int ND_PRINT (int *) ;

__attribute__((used)) static void
igrp_entry_print(netdissect_options *ndo, register const struct igrprte *igr,
    register int is_interior, register int is_exterior)
{
 register u_int delay, bandwidth;
 u_int metric, mtu;

 if (is_interior)
  ND_PRINT((ndo, " *.%d.%d.%d", igr->igr_net[0],
      igr->igr_net[1], igr->igr_net[2]));
 else if (is_exterior)
  ND_PRINT((ndo, " X%d.%d.%d.0", igr->igr_net[0],
      igr->igr_net[1], igr->igr_net[2]));
 else
  ND_PRINT((ndo, " %d.%d.%d.0", igr->igr_net[0],
      igr->igr_net[1], igr->igr_net[2]));

 delay = EXTRACT_24BITS(igr->igr_dly);
 bandwidth = EXTRACT_24BITS(igr->igr_bw);
 metric = bandwidth + delay;
 if (metric > 0xffffff)
  metric = 0xffffff;
 mtu = EXTRACT_16BITS(igr->igr_mtu);

 ND_PRINT((ndo, " d=%d b=%d r=%d l=%d M=%d mtu=%d in %d hops",
     10 * delay, bandwidth == 0 ? 0 : 10000000 / bandwidth,
     igr->igr_rel, igr->igr_ld, metric,
     mtu, igr->igr_hct));
}
