
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct msnlb_heartbeat_pkt {int host_ip; int virtual_ip; int host_prio; } ;
typedef int netdissect_options ;


 int EXTRACT_LE_32BITS (int *) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK (struct msnlb_heartbeat_pkt const) ;
 int ipaddr_string (int *,int *) ;

void
msnlb_print(netdissect_options *ndo, const u_char *bp)
{
 const struct msnlb_heartbeat_pkt *hb;

 hb = (const struct msnlb_heartbeat_pkt *)bp;
 ND_TCHECK(*hb);

 ND_PRINT((ndo, "MS NLB heartbeat, host priority: %u,",
  EXTRACT_LE_32BITS(&(hb->host_prio))));
 ND_PRINT((ndo, " cluster IP: %s,", ipaddr_string(ndo, &(hb->virtual_ip))));
 ND_PRINT((ndo, " host IP: %s", ipaddr_string(ndo, &(hb->host_ip))));
 return;
trunc:
 ND_PRINT((ndo, "[|MS NLB]"));
}
