
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct tegra_mc_softc {int dev; } ;


 scalar_t__ MC_ERR_ADR_HI (int) ;
 int MC_ERR_RW ;
 int MC_ERR_SECURITY ;
 int MC_ERR_STATUS ;
 int MC_ERR_SWAP ;
 size_t MC_ERR_TYPE (int) ;
 int MC_INTSTATUS ;
 int MC_INT_ARBITRATION_EMEM ;
 int MC_INT_DECERR_EMEM ;
 int MC_INT_DECERR_MTS ;
 int MC_INT_DECERR_VPR ;
 int MC_INT_INT_MASK ;
 int MC_INT_INVALID_APB_ASID_UPDATE ;
 int MC_INT_INVALID_SMMU_PAGE ;
 int MC_INT_SECERR_SEC ;
 int MC_INT_SECURITY_VIOLATION ;
 int RD4 (struct tegra_mc_softc*,int ) ;
 int WR4 (struct tegra_mc_softc*,int ,int) ;
 int device_printf (int ,char*) ;
 int printf (char*,...) ;
 int * smmu_err_tbl ;

__attribute__((used)) static void
tegra_mc_intr(void *arg)
{
 struct tegra_mc_softc *sc;
 uint32_t stat, err;
 uint64_t addr;

 sc = (struct tegra_mc_softc *)arg;

 stat = RD4(sc, MC_INTSTATUS);
 if ((stat & MC_INT_INT_MASK) == 0) {
  WR4(sc, MC_INTSTATUS, stat);
  return;
 }

 device_printf(sc->dev, "Memory Controller Interrupt:\n");
 if (stat & MC_INT_DECERR_MTS)
  printf(" - MTS carveout violation\n");
 if (stat & MC_INT_SECERR_SEC)
  printf(" - SEC carveout violation\n");
 if (stat & MC_INT_DECERR_VPR)
  printf(" - VPR requirements violated\n");
 if (stat & MC_INT_INVALID_APB_ASID_UPDATE)
  printf(" - ivalid APB ASID update\n");
 if (stat & MC_INT_INVALID_SMMU_PAGE)
  printf(" - SMMU address translation error\n");
 if (stat & MC_INT_ARBITRATION_EMEM)
  printf(" - arbitration deadlock-prevention threshold hit\n");
 if (stat & MC_INT_SECURITY_VIOLATION)
  printf(" - SMMU address translation security error\n");
 if (stat & MC_INT_DECERR_EMEM)
  printf(" - SMMU address decode error\n");

 if ((stat & (MC_INT_INVALID_SMMU_PAGE | MC_INT_SECURITY_VIOLATION |
    MC_INT_DECERR_EMEM)) != 0) {
  err = RD4(sc, MC_ERR_STATUS);
  addr = RD4(sc, MC_ERR_STATUS);
  addr |= (uint64_t)(MC_ERR_ADR_HI(err)) << 32;
  printf(" at 0x%012llX [%s %s %s]  - %s error.\n",
      addr,
      stat & MC_ERR_SWAP ? "Swap, " : "",
      stat & MC_ERR_SECURITY ? "Sec, " : "",
      stat & MC_ERR_RW ? "Write" : "Read",
      smmu_err_tbl[MC_ERR_TYPE(err)]);
 }
 WR4(sc, MC_INTSTATUS, stat);
}
