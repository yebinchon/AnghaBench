
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iodesc {int myip; int * myea; } ;
struct ether_arp {scalar_t__ arp_hrd; scalar_t__ arp_pro; int arp_hln; int arp_pln; scalar_t__ arp_op; int * arp_tha; int * arp_spa; int * arp_sha; int * arp_tpa; } ;


 int ARPHRD_ETHER ;
 int ARPOP_REPLY ;
 int ARPOP_REQUEST ;
 int ETHERTYPE_ARP ;
 int ETHERTYPE_IP ;
 scalar_t__ bcmp (int *,int *,int) ;
 int bcopy (int *,int *,int) ;
 scalar_t__ debug ;
 char* ether_sprintf (int *) ;
 scalar_t__ htons (int ) ;
 int printf (char*,...) ;
 int sendether (struct iodesc*,void*,int,int *,int ) ;

void
arp_reply(struct iodesc *d, void *pkt)
{
 struct ether_arp *arp = pkt;

 if (arp->arp_hrd != htons(ARPHRD_ETHER) ||
     arp->arp_pro != htons(ETHERTYPE_IP) ||
     arp->arp_hln != sizeof(arp->arp_sha) ||
     arp->arp_pln != sizeof(arp->arp_spa) )
 {




  return;
 }

 if (arp->arp_op != htons(ARPOP_REQUEST)) {




  return;
 }


 if (bcmp(arp->arp_tpa, &d->myip, sizeof(arp->arp_tpa)))
  return;







 arp->arp_op = htons(ARPOP_REPLY);

 bcopy(arp->arp_sha, arp->arp_tha, sizeof(arp->arp_tha));
 bcopy(arp->arp_spa, arp->arp_tpa, sizeof(arp->arp_tpa));

 bcopy(d->myea, arp->arp_sha, sizeof(arp->arp_sha));
 bcopy(&d->myip, arp->arp_spa, sizeof(arp->arp_spa));





 (void) sendether(d, pkt, sizeof(*arp) + 18,
                  arp->arp_tha, ETHERTYPE_ARP);
}
