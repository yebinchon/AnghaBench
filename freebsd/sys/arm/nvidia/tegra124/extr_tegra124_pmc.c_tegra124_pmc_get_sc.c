
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra124_pmc_softc {int dummy; } ;


 int panic (char*) ;
 struct tegra124_pmc_softc* pmc_sc ;

__attribute__((used)) static inline struct tegra124_pmc_softc *
tegra124_pmc_get_sc(void)
{
 if (pmc_sc == ((void*)0))
  panic("To early call to Tegra PMC driver.\n");
 return (pmc_sc);
}
