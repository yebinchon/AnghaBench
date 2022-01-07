
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct iodesc {int dummy; } ;
struct bootp {int bp_secs; } ;
typedef int ssize_t ;


 scalar_t__ bot ;
 scalar_t__ debug ;
 scalar_t__ getsecs () ;
 int htons (int ) ;
 int printf (char*,...) ;
 int sendudp (struct iodesc*,void*,size_t) ;

__attribute__((used)) static ssize_t
bootpsend(struct iodesc *d, void *pkt, size_t len)
{
 struct bootp *bp;






 bp = pkt;
 bp->bp_secs = htons((u_short)(getsecs() - bot));






 return (sendudp(d, pkt, len));
}
