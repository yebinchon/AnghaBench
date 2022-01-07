
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct thunder_pem_softc {int reg_bst; int dev; } ;
typedef scalar_t__ bus_space_handle_t ;


 int KASSERT (int,char*) ;
 int PEM_CFG_SLIX_TO_REG (int) ;
 int SLI_ACC_REG_CNT ;
 int bus_space_read_8 (int ,scalar_t__,int ) ;
 int bus_space_write_8 (int ,scalar_t__,int ,int) ;
 int device_printf (int ,char*) ;
 scalar_t__ sli0_s2m_regx_base ;
 scalar_t__ sli1_s2m_regx_base ;

__attribute__((used)) static void
thunder_pem_slix_s2m_regx_acc_modify(struct thunder_pem_softc *sc,
    int sli_group, int slix)
{
 uint64_t regval;
 bus_space_handle_t handle = 0;

 KASSERT(slix >= 0 && slix <= SLI_ACC_REG_CNT, ("Invalid SLI index"));

 if (sli_group == 0)
  handle = sli0_s2m_regx_base;
 else if (sli_group == 1)
  handle = sli1_s2m_regx_base;
 else
  device_printf(sc->dev, "SLI group is not correct\n");

 if (handle) {

  regval = bus_space_read_8(sc->reg_bst, handle,
      PEM_CFG_SLIX_TO_REG(slix));
  regval &= ~(0xFFFFFFFFUL);
  bus_space_write_8(sc->reg_bst, handle,
      PEM_CFG_SLIX_TO_REG(slix), regval);
 }
}
