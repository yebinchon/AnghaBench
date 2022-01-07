
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int p_uid; int p_sid; } ;
struct pkt_rreq {int pr_eseq; int pr_sseq; TYPE_1__ pr_page; int pr_id; } ;
typedef int netdissect_options ;


 int EXTRACT_32BITS (int *) ;
 int ND_PRINT (int *) ;
 int ND_TTEST (struct pkt_rreq const) ;
 int ipaddr_string (int *,int *) ;

__attribute__((used)) static int
wb_rreq(netdissect_options *ndo,
        const struct pkt_rreq *rreq, u_int len)
{
 ND_PRINT((ndo, " wb-rreq:"));
 if (len < sizeof(*rreq) || !ND_TTEST(*rreq))
  return (-1);

 ND_PRINT((ndo, " please repair %s %s:%u<%u:%u>",
        ipaddr_string(ndo, &rreq->pr_id),
        ipaddr_string(ndo, &rreq->pr_page.p_sid),
        EXTRACT_32BITS(&rreq->pr_page.p_uid),
        EXTRACT_32BITS(&rreq->pr_sseq),
        EXTRACT_32BITS(&rreq->pr_eseq)));
 return (0);
}
