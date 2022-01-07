
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint64_t ;
struct vm {int dummy; } ;
struct TYPE_3__ {int startrid; int num_msgs; int ** cookie; TYPE_2__* arg; int ** res; } ;
struct pptdev {TYPE_1__ msi; int dev; struct vm* vm; } ;
struct TYPE_4__ {void* msg_data; void* addr; struct pptdev* pptdev; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOENT ;
 int ENOSPC ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int MAX_MSIMSGS ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int * bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_setup_intr (int ,int *,int,int ,int *,TYPE_2__*,int **) ;
 int pci_alloc_msi (int ,int*) ;
 int pci_msi_count (int ) ;
 int pci_release_msi (int ) ;
 struct pptdev* ppt_find (int,int,int) ;
 int ppt_teardown_msi (struct pptdev*) ;
 int pptintr ;

int
ppt_setup_msi(struct vm *vm, int vcpu, int bus, int slot, int func,
       uint64_t addr, uint64_t msg, int numvec)
{
 int i, rid, flags;
 int msi_count, startrid, error, tmp;
 struct pptdev *ppt;

 if (numvec < 0 || numvec > MAX_MSIMSGS)
  return (EINVAL);

 ppt = ppt_find(bus, slot, func);
 if (ppt == ((void*)0))
  return (ENOENT);
 if (ppt->vm != vm)
  return (EBUSY);


 ppt_teardown_msi(ppt);

 if (numvec == 0)
  return (0);

 flags = RF_ACTIVE;
 msi_count = pci_msi_count(ppt->dev);
 if (msi_count == 0) {
  startrid = 0;
  msi_count = 1;
  flags |= RF_SHAREABLE;
 } else
  startrid = 1;





 if (numvec > msi_count)
  return (EINVAL);





 if (startrid == 1) {
  tmp = numvec;
  error = pci_alloc_msi(ppt->dev, &tmp);
  if (error)
   return (error);
  else if (tmp != numvec) {
   pci_release_msi(ppt->dev);
   return (ENOSPC);
  } else {

  }
 }

 ppt->msi.startrid = startrid;




 for (i = 0; i < numvec; i++) {
  ppt->msi.num_msgs = i + 1;
  ppt->msi.cookie[i] = ((void*)0);

  rid = startrid + i;
  ppt->msi.res[i] = bus_alloc_resource_any(ppt->dev, SYS_RES_IRQ,
        &rid, flags);
  if (ppt->msi.res[i] == ((void*)0))
   break;

  ppt->msi.arg[i].pptdev = ppt;
  ppt->msi.arg[i].addr = addr;
  ppt->msi.arg[i].msg_data = msg + i;

  error = bus_setup_intr(ppt->dev, ppt->msi.res[i],
           INTR_TYPE_NET | INTR_MPSAFE,
           pptintr, ((void*)0), &ppt->msi.arg[i],
           &ppt->msi.cookie[i]);
  if (error != 0)
   break;
 }

 if (i < numvec) {
  ppt_teardown_msi(ppt);
  return (ENXIO);
 }

 return (0);
}
