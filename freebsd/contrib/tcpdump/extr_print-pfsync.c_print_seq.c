
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfsync_state_peer {scalar_t__ seqlo; scalar_t__ seqhi; scalar_t__ seqdiff; } ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 scalar_t__ ntohl (scalar_t__) ;

__attribute__((used)) static void
print_seq(netdissect_options *ndo, const struct pfsync_state_peer *p)
{
 if (p->seqdiff)
  ND_PRINT((ndo, "[%u + %u](+%u)", ntohl(p->seqlo),
      ntohl(p->seqhi) - ntohl(p->seqlo), ntohl(p->seqdiff)));
 else
  ND_PRINT((ndo, "[%u + %u]", ntohl(p->seqlo),
      ntohl(p->seqhi) - ntohl(p->seqlo)));
}
