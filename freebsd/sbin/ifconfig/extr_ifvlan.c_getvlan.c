
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlanreq {int dummy; } ;
struct ifreq {scalar_t__ ifr_data; } ;
typedef scalar_t__ caddr_t ;


 int SIOCGETVLAN ;
 int bzero (char*,int) ;
 int ioctl (int,int ,scalar_t__) ;

__attribute__((used)) static int
getvlan(int s, struct ifreq *ifr, struct vlanreq *vreq)
{
 bzero((char *)vreq, sizeof(*vreq));
 ifr->ifr_data = (caddr_t)vreq;

 return ioctl(s, SIOCGETVLAN, (caddr_t)ifr);
}
