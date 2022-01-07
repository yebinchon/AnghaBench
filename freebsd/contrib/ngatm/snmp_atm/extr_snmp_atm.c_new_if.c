
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ifi_type; } ;
struct TYPE_4__ {TYPE_1__ ifmd_data; } ;
struct mibif {int * xnotify; TYPE_2__ mib; } ;


 scalar_t__ IFT_ATM ;
 int attach_if (struct mibif*) ;
 int started ;

__attribute__((used)) static int
new_if(struct mibif *ifp)
{
 if (!started || ifp->mib.ifmd_data.ifi_type != IFT_ATM ||
     ifp->xnotify != ((void*)0))
  return (0);

 attach_if(ifp);
 return (1);
}
