
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {struct sockaddr* next; struct sockaddr* dstaddr; struct sockaddr* addr; struct sockaddr* netmask; struct sockaddr* broadaddr; } ;
struct TYPE_3__ {struct sockaddr* addresses; } ;
typedef TYPE_1__ pcap_if_t ;
typedef struct sockaddr pcap_addr_t ;


 int PCAP_ERRBUF_SIZE ;
 scalar_t__ dup_sockaddr (struct sockaddr*,size_t) ;
 int errno ;
 int free (struct sockaddr*) ;
 scalar_t__ malloc (int) ;
 int pcap_fmt_errmsg_for_errno (char*,int ,int ,char*) ;

int
add_addr_to_dev(pcap_if_t *curdev,
    struct sockaddr *addr, size_t addr_size,
    struct sockaddr *netmask, size_t netmask_size,
    struct sockaddr *broadaddr, size_t broadaddr_size,
    struct sockaddr *dstaddr, size_t dstaddr_size,
    char *errbuf)
{
 pcap_addr_t *curaddr, *prevaddr, *nextaddr;




 curaddr = (pcap_addr_t *)malloc(sizeof(pcap_addr_t));
 if (curaddr == ((void*)0)) {
  pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE,
      errno, "malloc");
  return (-1);
 }

 curaddr->next = ((void*)0);
 if (addr != ((void*)0) && addr_size != 0) {
  curaddr->addr = (struct sockaddr *)dup_sockaddr(addr, addr_size);
  if (curaddr->addr == ((void*)0)) {
   pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE,
       errno, "malloc");
   free(curaddr);
   return (-1);
  }
 } else
  curaddr->addr = ((void*)0);

 if (netmask != ((void*)0) && netmask_size != 0) {
  curaddr->netmask = (struct sockaddr *)dup_sockaddr(netmask, netmask_size);
  if (curaddr->netmask == ((void*)0)) {
   pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE,
       errno, "malloc");
   if (curaddr->addr != ((void*)0))
    free(curaddr->addr);
   free(curaddr);
   return (-1);
  }
 } else
  curaddr->netmask = ((void*)0);

 if (broadaddr != ((void*)0) && broadaddr_size != 0) {
  curaddr->broadaddr = (struct sockaddr *)dup_sockaddr(broadaddr, broadaddr_size);
  if (curaddr->broadaddr == ((void*)0)) {
   pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE,
       errno, "malloc");
   if (curaddr->netmask != ((void*)0))
    free(curaddr->netmask);
   if (curaddr->addr != ((void*)0))
    free(curaddr->addr);
   free(curaddr);
   return (-1);
  }
 } else
  curaddr->broadaddr = ((void*)0);

 if (dstaddr != ((void*)0) && dstaddr_size != 0) {
  curaddr->dstaddr = (struct sockaddr *)dup_sockaddr(dstaddr, dstaddr_size);
  if (curaddr->dstaddr == ((void*)0)) {
   pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE,
       errno, "malloc");
   if (curaddr->broadaddr != ((void*)0))
    free(curaddr->broadaddr);
   if (curaddr->netmask != ((void*)0))
    free(curaddr->netmask);
   if (curaddr->addr != ((void*)0))
    free(curaddr->addr);
   free(curaddr);
   return (-1);
  }
 } else
  curaddr->dstaddr = ((void*)0);




 for (prevaddr = curdev->addresses; prevaddr != ((void*)0); prevaddr = nextaddr) {
  nextaddr = prevaddr->next;
  if (nextaddr == ((void*)0)) {



   break;
  }
 }

 if (prevaddr == ((void*)0)) {



  curdev->addresses = curaddr;
 } else {




  prevaddr->next = curaddr;
 }

 return (0);
}
