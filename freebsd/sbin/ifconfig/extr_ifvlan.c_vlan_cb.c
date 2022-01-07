
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ vlr_tag; char* vlr_parent; } ;


 scalar_t__ NOTAG ;
 int errx (int,char*) ;
 TYPE_1__ params ;

__attribute__((used)) static void
vlan_cb(int s, void *arg)
{
 if ((params.vlr_tag != NOTAG) ^ (params.vlr_parent[0] != '\0'))
  errx(1, "both vlan and vlandev must be specified");
}
