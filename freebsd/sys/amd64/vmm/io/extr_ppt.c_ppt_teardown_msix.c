
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_msgs; scalar_t__ msix_pba_rid; int * msix_pba_res; scalar_t__ msix_table_rid; int * msix_table_res; int arg; int cookie; int res; } ;
struct pptdev {TYPE_1__ msix; int dev; } ;


 int M_PPTMSIX ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,scalar_t__,int *) ;
 int free (int ,int ) ;
 int pci_release_msi (int ) ;
 int ppt_teardown_msix_intr (struct pptdev*,int) ;

__attribute__((used)) static void
ppt_teardown_msix(struct pptdev *ppt)
{
 int i;

 if (ppt->msix.num_msgs == 0)
  return;

 for (i = 0; i < ppt->msix.num_msgs; i++)
  ppt_teardown_msix_intr(ppt, i);

 free(ppt->msix.res, M_PPTMSIX);
 free(ppt->msix.cookie, M_PPTMSIX);
 free(ppt->msix.arg, M_PPTMSIX);

 pci_release_msi(ppt->dev);

 if (ppt->msix.msix_table_res) {
  bus_release_resource(ppt->dev, SYS_RES_MEMORY,
         ppt->msix.msix_table_rid,
         ppt->msix.msix_table_res);
  ppt->msix.msix_table_res = ((void*)0);
  ppt->msix.msix_table_rid = 0;
 }
 if (ppt->msix.msix_pba_res) {
  bus_release_resource(ppt->dev, SYS_RES_MEMORY,
         ppt->msix.msix_pba_rid,
         ppt->msix.msix_pba_res);
  ppt->msix.msix_pba_res = ((void*)0);
  ppt->msix.msix_pba_rid = 0;
 }

 ppt->msix.num_msgs = 0;
}
