
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vlanreq {int vlr_tag; char* vlr_parent; } ;
typedef int caddr_t ;
struct TYPE_3__ {int ifr_vlan_pcp; } ;


 int SIOCGVLANPCP ;
 int getvlan (int,TYPE_1__*,struct vlanreq*) ;
 TYPE_1__ ifr ;
 int ioctl (int,int ,int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
vlan_status(int s)
{
 struct vlanreq vreq;

 if (getvlan(s, &ifr, &vreq) == -1)
  return;
 printf("\tvlan: %d", vreq.vlr_tag);
 if (ioctl(s, SIOCGVLANPCP, (caddr_t)&ifr) != -1)
  printf(" vlanpcp: %u", ifr.ifr_vlan_pcp);
 printf(" parent interface: %s", vreq.vlr_parent[0] == '\0' ?
     "<none>" : vreq.vlr_parent);
 printf("\n");
}
