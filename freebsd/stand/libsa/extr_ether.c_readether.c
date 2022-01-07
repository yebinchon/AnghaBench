
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int time_t ;
struct iodesc {int myea; } ;
struct ether_header {int ether_type; int ether_dhost; } ;
typedef int ssize_t ;


 scalar_t__ ETHER_ALIGN ;
 int bcea ;
 scalar_t__ bcmp (int ,int ,int) ;
 scalar_t__ debug ;
 char* ether_sprintf (int ) ;
 int free (void*) ;
 int netif_get (struct iodesc*,void**,int ) ;
 int ntohs (int ) ;
 int printf (char*,...) ;

ssize_t
readether(struct iodesc *d, void **pkt, void **payload, time_t tleft,
    uint16_t *etype)
{
 ssize_t n;
 struct ether_header *eh;
 void *ptr;






 ptr = ((void*)0);
 n = netif_get(d, &ptr, tleft);
 if (n == -1 || n < sizeof(*eh)) {
  free(ptr);
  return (-1);
 }

 eh = (struct ether_header *)((uintptr_t)ptr + ETHER_ALIGN);

 if (bcmp(d->myea, eh->ether_dhost, 6) != 0 &&
     bcmp(bcea, eh->ether_dhost, 6) != 0) {





  free(ptr);
  return (-1);
 }

 *pkt = ptr;
 *payload = (void *)((uintptr_t)eh + sizeof(*eh));
 *etype = ntohs(eh->ether_type);

 n -= sizeof(*eh);
 return (n);
}
