
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udpiphdr {int ui_dst; int ui_src; int ui_len; int ui_pr; } ;
struct udphdr {int uh_sum; int uh_ulen; int uh_dport; int uh_sport; } ;
struct ip {int dummy; } ;
struct iodesc {int destip; int myip; int destport; int myport; } ;
typedef int ssize_t ;


 int IPPROTO_UDP ;
 int bzero (struct udpiphdr*,int) ;
 scalar_t__ debug ;
 int htons (size_t) ;
 int in_cksum (struct udpiphdr*,size_t) ;
 char* inet_ntoa (int ) ;
 int ntohs (int ) ;
 int panic (char*,int,size_t) ;
 int printf (char*,...) ;
 int sendip (struct iodesc*,struct udphdr*,size_t,int ) ;

ssize_t
sendudp(struct iodesc *d, void *pkt, size_t len)
{
 ssize_t cc;
 struct udpiphdr *ui;
 struct udphdr *uh;
 ui = (struct udpiphdr *)pkt - 1;
 bzero(ui, sizeof(*ui));

 uh = (struct udphdr *)pkt - 1;
 len += sizeof(*uh);

 uh->uh_sport = d->myport;
 uh->uh_dport = d->destport;
 uh->uh_ulen = htons(len);

 ui->ui_pr = IPPROTO_UDP;
 ui->ui_len = uh->uh_ulen;
 ui->ui_src = d->myip;
 ui->ui_dst = d->destip;


 uh->uh_sum = in_cksum(ui, len + sizeof (struct ip));


 cc = sendip(d, uh, len, IPPROTO_UDP);
 if (cc == -1)
  return (-1);
 if (cc != len)
  panic("sendudp: bad write (%zd != %zd)", cc, len);
 return (cc - sizeof(*uh));
}
