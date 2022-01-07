
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct al_pcie_port {scalar_t__ rev_id; } ;


 scalar_t__ AL_PCIE_REV_ID_3 ;
 int al_reg_write32 (int *,int ) ;

__attribute__((used)) static void
al_reg_write32_dbi_cs2(
 struct al_pcie_port *pcie_port,
 uint32_t *offset,
 uint32_t val)
{
 uintptr_t cs2_bit =
  (pcie_port->rev_id == AL_PCIE_REV_ID_3) ? 0x4000 : 0x1000;

 al_reg_write32((uint32_t *)((uintptr_t)offset | cs2_bit), val);
}
