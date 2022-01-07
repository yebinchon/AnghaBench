
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_2__ {int startrid; int ** cookie; struct resource** res; } ;
struct pptdev {TYPE_1__ msix; int dev; } ;


 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int bus_teardown_intr (int ,struct resource*,void*) ;

__attribute__((used)) static void
ppt_teardown_msix_intr(struct pptdev *ppt, int idx)
{
 int rid;
 struct resource *res;
 void *cookie;

 rid = ppt->msix.startrid + idx;
 res = ppt->msix.res[idx];
 cookie = ppt->msix.cookie[idx];

 if (cookie != ((void*)0))
  bus_teardown_intr(ppt->dev, res, cookie);

 if (res != ((void*)0))
  bus_release_resource(ppt->dev, SYS_RES_IRQ, rid, res);

 ppt->msix.res[idx] = ((void*)0);
 ppt->msix.cookie[idx] = ((void*)0);
}
