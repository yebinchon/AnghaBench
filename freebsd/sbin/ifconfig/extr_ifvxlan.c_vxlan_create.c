
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {scalar_t__ ifr_data; } ;
typedef scalar_t__ caddr_t ;


 int SIOCIFCREATE2 ;
 int err (int,char*) ;
 scalar_t__ ioctl (int,int ,struct ifreq*) ;
 int params ;
 int vxlan_check_params () ;

__attribute__((used)) static void
vxlan_create(int s, struct ifreq *ifr)
{

 vxlan_check_params();

 ifr->ifr_data = (caddr_t) &params;
 if (ioctl(s, SIOCIFCREATE2, ifr) < 0)
  err(1, "SIOCIFCREATE2");
}
