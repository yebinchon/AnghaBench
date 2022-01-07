
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifreq {scalar_t__ ifr_data; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {scalar_t__ vlr_tag; char* vlr_parent; } ;


 scalar_t__ NOTAG ;
 int SIOCSETVLAN ;
 int err (int,char*) ;
 int ioctl (int,int ,scalar_t__) ;
 TYPE_1__ params ;

__attribute__((used)) static void
vlan_set(int s, struct ifreq *ifr)
{
 if (params.vlr_tag != NOTAG && params.vlr_parent[0] != '\0') {
  ifr->ifr_data = (caddr_t) &params;
  if (ioctl(s, SIOCSETVLAN, (caddr_t)ifr) == -1)
   err(1, "SIOCSETVLAN");
 }
}
