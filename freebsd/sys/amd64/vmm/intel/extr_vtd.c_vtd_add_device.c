
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef size_t uint8_t ;
typedef int uint64_t ;
typedef int uint16_t ;
struct vtdmap {int ext_cap; } ;
struct domain {int addrwidth; int id; int ptp; } ;


 size_t PCI_RID2BUS (int ) ;
 int VTD_CTX_PRESENT ;
 int VTD_CTX_TT_ALL ;
 scalar_t__ VTD_ECAP_DI (int ) ;
 int VTD_RID2IDX (int ) ;
 int** ctx_tables ;
 int panic (char*,int ,...) ;
 struct vtdmap* vtd_device_scope (int ) ;
 int vtophys (int ) ;

__attribute__((used)) static void
vtd_add_device(void *arg, uint16_t rid)
{
 int idx;
 uint64_t *ctxp;
 struct domain *dom = arg;
 vm_paddr_t pt_paddr;
 struct vtdmap *vtdmap;
 uint8_t bus;

 bus = PCI_RID2BUS(rid);
 ctxp = ctx_tables[bus];
 pt_paddr = vtophys(dom->ptp);
 idx = VTD_RID2IDX(rid);

 if (ctxp[idx] & VTD_CTX_PRESENT) {
  panic("vtd_add_device: device %x is already owned by "
        "domain %d", rid,
        (uint16_t)(ctxp[idx + 1] >> 8));
 }

 if ((vtdmap = vtd_device_scope(rid)) == ((void*)0))
  panic("vtd_add_device: device %x is not in scope for "
        "any DMA remapping unit", rid);





 ctxp[idx + 1] = dom->addrwidth | (dom->id << 8);

 if (VTD_ECAP_DI(vtdmap->ext_cap))
  ctxp[idx] = VTD_CTX_TT_ALL;
 else
  ctxp[idx] = 0;

 ctxp[idx] |= pt_paddr | VTD_CTX_PRESENT;





}
