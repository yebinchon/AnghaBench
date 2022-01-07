
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct pkt_rreq {int dummy; } ;
struct pkt_rrep {int dummy; } ;
struct pkt_preq {int dummy; } ;
struct pkt_prep {int dummy; } ;
struct pkt_id {int dummy; } ;
struct pkt_hdr {int ph_type; scalar_t__ ph_flags; } ;
struct pkt_dop {int dummy; } ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int ND_TTEST (struct pkt_hdr const) ;







 int tstr ;
 int wb_drawop (int *,struct pkt_dop const*,int) ;
 int wb_id (int *,struct pkt_id const*,int) ;
 int wb_prep (int *,struct pkt_prep const*,int) ;
 int wb_preq (int *,struct pkt_preq const*,int) ;
 int wb_rrep (int *,struct pkt_rrep const*,int) ;
 int wb_rreq (int *,struct pkt_rreq const*,int) ;

void
wb_print(netdissect_options *ndo,
         register const void *hdr, register u_int len)
{
 register const struct pkt_hdr *ph;

 ph = (const struct pkt_hdr *)hdr;
 if (len < sizeof(*ph) || !ND_TTEST(*ph)) {
  ND_PRINT((ndo, "%s", tstr));
  return;
 }
 len -= sizeof(*ph);

 if (ph->ph_flags)
  ND_PRINT((ndo, "*"));
 switch (ph->ph_type) {

 case 132:
  ND_PRINT((ndo, " wb-kill"));
  return;

 case 133:
  if (wb_id(ndo, (const struct pkt_id *)(ph + 1), len) >= 0)
   return;
  ND_PRINT((ndo, "%s", tstr));
  break;

 case 128:
  if (wb_rreq(ndo, (const struct pkt_rreq *)(ph + 1), len) >= 0)
   return;
  ND_PRINT((ndo, "%s", tstr));
  break;

 case 129:
  if (wb_rrep(ndo, (const struct pkt_rrep *)(ph + 1), len) >= 0)
   return;
  ND_PRINT((ndo, "%s", tstr));
  break;

 case 134:
  if (wb_drawop(ndo, (const struct pkt_dop *)(ph + 1), len) >= 0)
   return;
  ND_PRINT((ndo, "%s", tstr));
  break;

 case 130:
  if (wb_preq(ndo, (const struct pkt_preq *)(ph + 1), len) >= 0)
   return;
  ND_PRINT((ndo, "%s", tstr));
  break;

 case 131:
  if (wb_prep(ndo, (const struct pkt_prep *)(ph + 1), len) >= 0)
   return;
  ND_PRINT((ndo, "%s", tstr));
  break;

 default:
  ND_PRINT((ndo, " wb-%d!", ph->ph_type));
  return;
 }
}
