
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_mc_softc {int dummy; } ;


 int MC_INTMASK ;
 int MC_INTSTATUS ;
 int MC_INT_INT_MASK ;
 int WR4 (struct tegra_mc_softc*,int ,int ) ;

__attribute__((used)) static void
tegra_mc_init_hw(struct tegra_mc_softc *sc)
{


 WR4(sc, MC_INTMASK, 0);
 WR4(sc, MC_INTSTATUS, MC_INT_INT_MASK);
}
