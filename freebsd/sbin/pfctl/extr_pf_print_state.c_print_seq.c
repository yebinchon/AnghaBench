
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfsync_state_peer {scalar_t__ seqlo; scalar_t__ seqhi; scalar_t__ seqdiff; } ;


 int ntohl (scalar_t__) ;
 int printf (char*,int,int,...) ;

void
print_seq(struct pfsync_state_peer *p)
{
 if (p->seqdiff)
  printf("[%u + %u](+%u)", ntohl(p->seqlo),
      ntohl(p->seqhi) - ntohl(p->seqlo), ntohl(p->seqdiff));
 else
  printf("[%u + %u]", ntohl(p->seqlo),
      ntohl(p->seqhi) - ntohl(p->seqlo));
}
