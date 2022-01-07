
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fst_iface {int dummy; } ;
typedef int Boolean ;


 scalar_t__ fst_iface_get_group (struct fst_iface*) ;

Boolean fst_are_ifaces_aggregated(struct fst_iface *iface1,
      struct fst_iface *iface2)
{
 return fst_iface_get_group(iface1) == fst_iface_get_group(iface2);
}
