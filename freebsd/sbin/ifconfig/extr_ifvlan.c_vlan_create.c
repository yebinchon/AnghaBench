
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifreq {scalar_t__ ifr_data; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {scalar_t__ vlr_tag; char* vlr_parent; } ;


 scalar_t__ NOTAG ;
 int SIOCIFCREATE2 ;
 int err (int,char*) ;
 int errx (int,char*) ;
 scalar_t__ ioctl (int,int ,struct ifreq*) ;
 TYPE_1__ params ;

__attribute__((used)) static void
vlan_create(int s, struct ifreq *ifr)
{
 if (params.vlr_tag != NOTAG || params.vlr_parent[0] != '\0') {



  if (params.vlr_tag == NOTAG)
   errx(1, "must specify a tag for vlan create");
  if (params.vlr_parent[0] == '\0')
   errx(1, "must specify a parent device for vlan create");
  ifr->ifr_data = (caddr_t) &params;
 }
 if (ioctl(s, SIOCIFCREATE2, ifr) < 0)
  err(1, "SIOCIFCREATE2");
}
