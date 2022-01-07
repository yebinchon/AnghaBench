
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct udpiphdr {scalar_t__ ui_len; int ui_x1; } ;
struct udphdr {scalar_t__ uh_ulen; scalar_t__ uh_dport; scalar_t__ uh_sum; } ;
struct ip {int dummy; } ;
struct iodesc {scalar_t__ myport; } ;
typedef int ssize_t ;


 int IPPROTO_UDP ;
 int bzero (int *,int) ;
 scalar_t__ debug ;
 int free (void*) ;
 scalar_t__ in_cksum (struct udpiphdr*,int) ;
 int ntohs (scalar_t__) ;
 int printf (char*,...) ;
 int readip (struct iodesc*,void**,void**,int ,int ) ;

ssize_t
readudp(struct iodesc *d, void **pkt, void **payload, time_t tleft)
{
 ssize_t n;
 struct udphdr *uh;
 void *ptr;






 uh = ((void*)0);
 ptr = ((void*)0);
 n = readip(d, &ptr, (void **)&uh, tleft, IPPROTO_UDP);
 if (n == -1 || n < sizeof(*uh) || n != ntohs(uh->uh_ulen)) {
  free(ptr);
  return (-1);
 }

 if (uh->uh_dport != d->myport) {





  free(ptr);
  return (-1);
 }


 if (uh->uh_sum) {
  struct udpiphdr *ui;
  struct ip *ip;
  struct ip tip;

  n = ntohs(uh->uh_ulen) + sizeof(*ip);


  ip = (struct ip *)uh - 1;
  tip = *ip;
  ui = (struct udpiphdr *)ip;
  bzero(&ui->ui_x1, sizeof(ui->ui_x1));
  ui->ui_len = uh->uh_ulen;
  if (in_cksum(ui, n) != 0) {




   free(ptr);
   return (-1);
  }
  *ip = tip;
 }

 if (ntohs(uh->uh_ulen) < sizeof(*uh)) {





  free(ptr);
  return (-1);
 }

 n = (n > (ntohs(uh->uh_ulen) - sizeof(*uh))) ?
     ntohs(uh->uh_ulen) - sizeof(*uh) : n;
 *pkt = ptr;
 *payload = (void *)((uintptr_t)uh + sizeof(*uh));
 return (n);
}
