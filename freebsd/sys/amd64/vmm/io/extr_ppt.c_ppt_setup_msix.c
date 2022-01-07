
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* uint64_t ;
typedef int uint32_t ;
struct vm {int dummy; } ;
struct TYPE_7__ {int num_msgs; int startrid; int msix_table_rid; int msix_pba_rid; int ** res; int ** cookie; TYPE_4__* arg; int * msix_pba_res; int * msix_table_res; } ;
struct pptdev {TYPE_3__ msix; int dev; struct vm* vm; } ;
struct TYPE_5__ {int msix_table_bar; int msix_pba_bar; } ;
struct TYPE_6__ {TYPE_1__ msix; } ;
struct pci_devinfo {TYPE_2__ cfg; } ;
struct TYPE_8__ {void* msg_data; void* addr; struct pptdev* pptdev; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOENT ;
 int ENOSPC ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int M_PPTMSIX ;
 int M_WAITOK ;
 int M_ZERO ;
 int PCIM_MSIX_VCTRL_MASK ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int,int *) ;
 int bus_setup_intr (int ,int *,int,int ,int *,TYPE_4__*,int **) ;
 struct pci_devinfo* device_get_ivars (int ) ;
 void* malloc (size_t,int ,int) ;
 int pci_alloc_msix (int ,int*) ;
 int pci_msix_count (int ) ;
 struct pptdev* ppt_find (int,int,int) ;
 int ppt_teardown_msix (struct pptdev*) ;
 int ppt_teardown_msix_intr (struct pptdev*,int) ;
 int pptintr ;

int
ppt_setup_msix(struct vm *vm, int vcpu, int bus, int slot, int func,
        int idx, uint64_t addr, uint64_t msg, uint32_t vector_control)
{
 struct pptdev *ppt;
 struct pci_devinfo *dinfo;
 int numvec, alloced, rid, error;
 size_t res_size, cookie_size, arg_size;

 ppt = ppt_find(bus, slot, func);
 if (ppt == ((void*)0))
  return (ENOENT);
 if (ppt->vm != vm)
  return (EBUSY);

 dinfo = device_get_ivars(ppt->dev);
 if (!dinfo)
  return (ENXIO);







 if (ppt->msix.num_msgs == 0) {
  numvec = pci_msix_count(ppt->dev);
  if (numvec <= 0)
   return (EINVAL);

  ppt->msix.startrid = 1;
  ppt->msix.num_msgs = numvec;

  res_size = numvec * sizeof(ppt->msix.res[0]);
  cookie_size = numvec * sizeof(ppt->msix.cookie[0]);
  arg_size = numvec * sizeof(ppt->msix.arg[0]);

  ppt->msix.res = malloc(res_size, M_PPTMSIX, M_WAITOK | M_ZERO);
  ppt->msix.cookie = malloc(cookie_size, M_PPTMSIX,
       M_WAITOK | M_ZERO);
  ppt->msix.arg = malloc(arg_size, M_PPTMSIX, M_WAITOK | M_ZERO);

  rid = dinfo->cfg.msix.msix_table_bar;
  ppt->msix.msix_table_res = bus_alloc_resource_any(ppt->dev,
            SYS_RES_MEMORY, &rid, RF_ACTIVE);

  if (ppt->msix.msix_table_res == ((void*)0)) {
   ppt_teardown_msix(ppt);
   return (ENOSPC);
  }
  ppt->msix.msix_table_rid = rid;

  if (dinfo->cfg.msix.msix_table_bar !=
      dinfo->cfg.msix.msix_pba_bar) {
   rid = dinfo->cfg.msix.msix_pba_bar;
   ppt->msix.msix_pba_res = bus_alloc_resource_any(
       ppt->dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);

   if (ppt->msix.msix_pba_res == ((void*)0)) {
    ppt_teardown_msix(ppt);
    return (ENOSPC);
   }
   ppt->msix.msix_pba_rid = rid;
  }

  alloced = numvec;
  error = pci_alloc_msix(ppt->dev, &alloced);
  if (error || alloced != numvec) {
   ppt_teardown_msix(ppt);
   return (error == 0 ? ENOSPC: error);
  }
 }

 if ((vector_control & PCIM_MSIX_VCTRL_MASK) == 0) {

  ppt_teardown_msix_intr(ppt, idx);


  ppt->msix.cookie[idx] = ((void*)0);
  rid = ppt->msix.startrid + idx;
  ppt->msix.res[idx] = bus_alloc_resource_any(ppt->dev, SYS_RES_IRQ,
           &rid, RF_ACTIVE);
  if (ppt->msix.res[idx] == ((void*)0))
   return (ENXIO);

  ppt->msix.arg[idx].pptdev = ppt;
  ppt->msix.arg[idx].addr = addr;
  ppt->msix.arg[idx].msg_data = msg;


  error = bus_setup_intr(ppt->dev, ppt->msix.res[idx],
           INTR_TYPE_NET | INTR_MPSAFE,
           pptintr, ((void*)0), &ppt->msix.arg[idx],
           &ppt->msix.cookie[idx]);

  if (error != 0) {
   bus_release_resource(ppt->dev, SYS_RES_IRQ, rid, ppt->msix.res[idx]);
   ppt->msix.cookie[idx] = ((void*)0);
   ppt->msix.res[idx] = ((void*)0);
   return (ENXIO);
  }
 } else {

  ppt_teardown_msix_intr(ppt, idx);
 }

 return (0);
}
