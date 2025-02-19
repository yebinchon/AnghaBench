
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
typedef int u_char ;
struct TYPE_7__ {int cb_vers; int cb_prog; int cb_proc; int cb_rpcvers; } ;
struct sunrpc_msg {TYPE_1__ rm_call; int rm_xid; } ;
struct ip6_hdr {int ip6_dst; int ip6_src; } ;
struct ip {int ip_dst; int ip_src; } ;
typedef int srcid ;
struct TYPE_8__ {int ndo_nflag; } ;
typedef TYPE_2__ netdissect_options ;
typedef int dstid ;


 int EXTRACT_32BITS (int *) ;
 int IP_V (struct ip const*) ;
 int ND_PRINT (TYPE_2__*) ;
 int SUNRPC_PMAPPORT ;




 int ip6addr_string (TYPE_2__*,int *) ;
 int ipaddr_string (TYPE_2__*,int *) ;
 int proc2str ;
 int progstr (int) ;
 int snprintf (char*,int,char*,int) ;
 int strlcpy (char*,char*,int) ;
 int tok2str (int ,char*,int) ;

void
sunrpcrequest_print(netdissect_options *ndo, register const u_char *bp,
                    register u_int length, register const u_char *bp2)
{
 register const struct sunrpc_msg *rp;
 register const struct ip *ip;
 register const struct ip6_hdr *ip6;
 uint32_t x;
 char srcid[20], dstid[20];

 rp = (const struct sunrpc_msg *)bp;

 if (!ndo->ndo_nflag) {
  snprintf(srcid, sizeof(srcid), "0x%x",
      EXTRACT_32BITS(&rp->rm_xid));
  strlcpy(dstid, "sunrpc", sizeof(dstid));
 } else {
  snprintf(srcid, sizeof(srcid), "0x%x",
      EXTRACT_32BITS(&rp->rm_xid));
  snprintf(dstid, sizeof(dstid), "0x%x", SUNRPC_PMAPPORT);
 }

 switch (IP_V((const struct ip *)bp2)) {
 case 4:
  ip = (const struct ip *)bp2;
  ND_PRINT((ndo, "%s.%s > %s.%s: %d",
      ipaddr_string(ndo, &ip->ip_src), srcid,
      ipaddr_string(ndo, &ip->ip_dst), dstid, length));
  break;
 case 6:
  ip6 = (const struct ip6_hdr *)bp2;
  ND_PRINT((ndo, "%s.%s > %s.%s: %d",
      ip6addr_string(ndo, &ip6->ip6_src), srcid,
      ip6addr_string(ndo, &ip6->ip6_dst), dstid, length));
  break;
 default:
  ND_PRINT((ndo, "%s.%s > %s.%s: %d", "?", srcid, "?", dstid, length));
  break;
 }

 ND_PRINT((ndo, " %s", tok2str(proc2str, " proc #%u",
     EXTRACT_32BITS(&rp->rm_call.cb_proc))));
 x = EXTRACT_32BITS(&rp->rm_call.cb_rpcvers);
 if (x != 2)
  ND_PRINT((ndo, " [rpcver %u]", x));

 switch (EXTRACT_32BITS(&rp->rm_call.cb_proc)) {

 case 129:
 case 128:
 case 130:
 case 131:
  x = EXTRACT_32BITS(&rp->rm_call.cb_prog);
  if (!ndo->ndo_nflag)
   ND_PRINT((ndo, " %s", progstr(x)));
  else
   ND_PRINT((ndo, " %u", x));
  ND_PRINT((ndo, ".%u", EXTRACT_32BITS(&rp->rm_call.cb_vers)));
  break;
 }
}
