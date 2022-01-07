
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int count; scalar_t__ objsize; } ;
typedef TYPE_1__ ipfw_obj_lheader ;
struct TYPE_7__ {int flags; char* ifname; int ifindex; int refcnt; int gencnt; } ;
typedef TYPE_2__ ipfw_iface_info ;
typedef scalar_t__ caddr_t ;


 int EX_OSERR ;
 int IPFW_IFFLAG_RESOLVED ;
 int err (int ,char*) ;
 int free (TYPE_1__*) ;
 int ifinfo_cmp ;
 int ipfw_get_tracked_ifaces (TYPE_1__**) ;
 int printf (char*,char*,int,int,...) ;
 int qsort (TYPE_1__*,int,scalar_t__,int ) ;

__attribute__((used)) static void
ipfw_list_tifaces()
{
 ipfw_obj_lheader *olh;
 ipfw_iface_info *info;
 int i, error;

 if ((error = ipfw_get_tracked_ifaces(&olh)) != 0)
  err(EX_OSERR, "Unable to request ipfw tracked interface list");


 qsort(olh + 1, olh->count, olh->objsize, ifinfo_cmp);

 info = (ipfw_iface_info *)(olh + 1);
 for (i = 0; i < olh->count; i++) {
  if (info->flags & IPFW_IFFLAG_RESOLVED)
   printf("%s ifindex: %d refcount: %u changes: %u\n",
       info->ifname, info->ifindex, info->refcnt,
       info->gencnt);
  else
   printf("%s ifindex: unresolved refcount: %u changes: %u\n",
       info->ifname, info->refcnt, info->gencnt);
  info = (ipfw_iface_info *)((caddr_t)info + olh->objsize);
 }

 free(olh);
}
