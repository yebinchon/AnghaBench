
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct amdvi_softc {scalar_t__ ptp; int id; scalar_t__ iotlb; } ;
struct amdvi_dte {int iotlb_enable; int sup_second_io_fault; int dt_valid; int pt_base; int pt_valid; int read_allow; int write_allow; int pt_level; int domain_id; int sup_all_io_fault; } ;
struct amdvi_domain {scalar_t__ ptp; int id; scalar_t__ iotlb; } ;


 int KASSERT (struct amdvi_softc*,char*) ;
 scalar_t__ amdvi_dev_support_iotlb (struct amdvi_softc*,size_t) ;
 int amdvi_disable_io_fault ;
 struct amdvi_dte* amdvi_dte ;
 struct amdvi_softc* amdvi_find_iommu (size_t) ;
 int amdvi_ptp_level ;
 int vtophys (scalar_t__) ;

__attribute__((used)) static void
amdvi_set_dte(struct amdvi_domain *domain, uint16_t devid, bool enable)
{
 struct amdvi_softc *softc;
 struct amdvi_dte* temp;

 KASSERT(domain, ("domain is NULL for pci_rid:0x%x\n", devid));

 softc = amdvi_find_iommu(devid);
 KASSERT(softc, ("softc is NULL for pci_rid:0x%x\n", devid));

 temp = &amdvi_dte[devid];
 temp->sup_second_io_fault = 1;
 temp->sup_all_io_fault = amdvi_disable_io_fault;

 temp->dt_valid = 1;
 temp->domain_id = domain->id;

 if (enable) {
  if (domain->ptp) {
   temp->pt_base = vtophys(domain->ptp) >> 12;
   temp->pt_level = amdvi_ptp_level;
  }




  temp->pt_valid = 1;
  temp->read_allow = 1;
  temp->write_allow = 1;
 }
}
