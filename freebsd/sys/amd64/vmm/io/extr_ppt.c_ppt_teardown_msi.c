
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_2__ {int num_msgs; int startrid; int ** cookie; struct resource** res; } ;
struct pptdev {TYPE_1__ msi; int dev; } ;


 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int bus_teardown_intr (int ,struct resource*,void*) ;
 int pci_release_msi (int ) ;

__attribute__((used)) static void
ppt_teardown_msi(struct pptdev *ppt)
{
 int i, rid;
 void *cookie;
 struct resource *res;

 if (ppt->msi.num_msgs == 0)
  return;

 for (i = 0; i < ppt->msi.num_msgs; i++) {
  rid = ppt->msi.startrid + i;
  res = ppt->msi.res[i];
  cookie = ppt->msi.cookie[i];

  if (cookie != ((void*)0))
   bus_teardown_intr(ppt->dev, res, cookie);

  if (res != ((void*)0))
   bus_release_resource(ppt->dev, SYS_RES_IRQ, rid, res);

  ppt->msi.res[i] = ((void*)0);
  ppt->msi.cookie[i] = ((void*)0);
 }

 if (ppt->msi.startrid == 1)
  pci_release_msi(ppt->dev);

 ppt->msi.num_msgs = 0;
}
