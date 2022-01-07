
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_7__ {int p_uid; int p_sid; } ;
struct pkt_dop {int pd_eseq; int pd_sseq; TYPE_1__ pd_page; } ;
struct pkt_rrep {int pr_id; struct pkt_dop pr_dop; } ;
struct TYPE_8__ {scalar_t__ ndo_vflag; } ;
typedef TYPE_2__ netdissect_options ;


 int EXTRACT_32BITS (int *) ;
 int ND_PRINT (TYPE_2__*) ;
 int ND_TTEST (struct pkt_rrep const) ;
 int ipaddr_string (TYPE_2__*,int *) ;
 int wb_dops (TYPE_2__*,struct pkt_dop const*,int ,int ) ;

__attribute__((used)) static int
wb_rrep(netdissect_options *ndo,
        const struct pkt_rrep *rrep, u_int len)
{
 const struct pkt_dop *dop = &rrep->pr_dop;

 ND_PRINT((ndo, " wb-rrep:"));
 if (len < sizeof(*rrep) || !ND_TTEST(*rrep))
  return (-1);
 len -= sizeof(*rrep);

 ND_PRINT((ndo, " for %s %s:%u<%u:%u>",
     ipaddr_string(ndo, &rrep->pr_id),
     ipaddr_string(ndo, &dop->pd_page.p_sid),
     EXTRACT_32BITS(&dop->pd_page.p_uid),
     EXTRACT_32BITS(&dop->pd_sseq),
     EXTRACT_32BITS(&dop->pd_eseq)));

 if (ndo->ndo_vflag)
  return (wb_dops(ndo, dop,
      EXTRACT_32BITS(&dop->pd_sseq),
      EXTRACT_32BITS(&dop->pd_eseq)));
 return (0);
}
