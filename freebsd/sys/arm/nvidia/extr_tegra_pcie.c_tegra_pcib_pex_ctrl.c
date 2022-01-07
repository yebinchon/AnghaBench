
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_pcib_softc {int dummy; } ;
typedef int bus_size_t ;


 int AFI_PEX0_CTRL ;
 int AFI_PEX1_CTRL ;
 int AFI_PEX2_CTRL ;
 int TEGRA_PCIB_MAX_PORTS ;
 int panic (char*,int) ;

__attribute__((used)) static bus_size_t
tegra_pcib_pex_ctrl(struct tegra_pcib_softc *sc, int port)
{
 if (port >= TEGRA_PCIB_MAX_PORTS)
  panic("invalid port number: %d\n", port);

 if (port == 0)
  return (AFI_PEX0_CTRL);
 else if (port == 1)
  return (AFI_PEX1_CTRL);
 else if (port == 2)
  return (AFI_PEX2_CTRL);
 else
  panic("invalid port number: %d\n", port);
}
