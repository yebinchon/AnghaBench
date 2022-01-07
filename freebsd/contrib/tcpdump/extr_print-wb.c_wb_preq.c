
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int p_uid; int p_sid; } ;
struct pkt_preq {TYPE_1__ pp_page; int pp_low; } ;
typedef int netdissect_options ;


 int EXTRACT_32BITS (int *) ;
 int ND_PRINT (int *) ;
 int ND_TTEST (struct pkt_preq const) ;
 int ipaddr_string (int *,int *) ;

__attribute__((used)) static int
wb_preq(netdissect_options *ndo,
        const struct pkt_preq *preq, u_int len)
{
 ND_PRINT((ndo, " wb-preq:"));
 if (len < sizeof(*preq) || !ND_TTEST(*preq))
  return (-1);

 ND_PRINT((ndo, " need %u/%s:%u",
        EXTRACT_32BITS(&preq->pp_low),
        ipaddr_string(ndo, &preq->pp_page.p_sid),
        EXTRACT_32BITS(&preq->pp_page.p_uid)));
 return (0);
}
