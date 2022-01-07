
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct iodesc {int * myea; } ;
struct ether_header {int ether_type; int ether_dhost; int ether_shost; } ;
typedef int ssize_t ;


 int MACPY (int *,int ) ;
 scalar_t__ debug ;
 int htons (int) ;
 int netif_put (struct iodesc*,struct ether_header*,size_t) ;
 int printf (char*) ;

ssize_t
sendether(struct iodesc *d, void *pkt, size_t len, uint8_t *dea, int etype)
{
 ssize_t n;
 struct ether_header *eh;






 eh = (struct ether_header *)pkt - 1;
 len += sizeof(*eh);

 MACPY(d->myea, eh->ether_shost);
 MACPY(dea, eh->ether_dhost);
 eh->ether_type = htons(etype);

 n = netif_put(d, eh, len);
 if (n == -1 || n < sizeof(*eh))
  return (-1);

 n -= sizeof(*eh);
 return (n);
}
