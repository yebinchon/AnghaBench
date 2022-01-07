
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iodesc {int dummy; } ;
typedef int ssize_t ;


 int ETHERTYPE_REVARP ;
 int bcea ;
 scalar_t__ debug ;
 int printf (char*) ;
 int sendether (struct iodesc*,void*,size_t,int ,int ) ;

__attribute__((used)) static ssize_t
rarpsend(struct iodesc *d, void *pkt, size_t len)
{






 return (sendether(d, pkt, len, bcea, ETHERTYPE_REVARP));
}
