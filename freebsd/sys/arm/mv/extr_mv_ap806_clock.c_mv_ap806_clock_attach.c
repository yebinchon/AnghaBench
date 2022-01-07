
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef void* uint64_t ;
typedef int uint32_t ;
struct mv_ap806_clock_softc {int * syscon; int dev; } ;
struct clkdom {int dummy; } ;
typedef int device_t ;
struct TYPE_7__ {void* freq; } ;


 int ENXIO ;
 int RD4 (struct mv_ap806_clock_softc*,int) ;
 scalar_t__ SYSCON_GET_HANDLE (int ,int **) ;
 TYPE_1__ ap806_clk_cluster_0 ;
 TYPE_1__ ap806_clk_cluster_1 ;
 TYPE_1__ ap806_clk_fixed ;
 TYPE_1__ ap806_clk_mss ;
 TYPE_1__ ap806_clk_sdio ;
 scalar_t__ bootverbose ;
 struct clkdom* clkdom_create (int ) ;
 int clkdom_dump (struct clkdom*) ;
 int clkdom_finit (struct clkdom*) ;
 int clknode_fixed_register (struct clkdom*,TYPE_1__*) ;
 struct mv_ap806_clock_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;

__attribute__((used)) static int
mv_ap806_clock_attach(device_t dev)
{
 struct mv_ap806_clock_softc *sc;
 struct clkdom *clkdom;
 uint64_t clock_freq;
 uint32_t reg;

 sc = device_get_softc(dev);
 sc->dev = dev;

 if (SYSCON_GET_HANDLE(sc->dev, &sc->syscon) != 0 ||
     sc->syscon == ((void*)0)) {
  device_printf(dev, "cannot get syscon for device\n");
  return (ENXIO);
 }





 reg = RD4(sc, 0x400);
 switch (reg & 0x1f) {
 case 0x0:
 case 0x1:
  clock_freq = 2000000000;
  break;
 case 0x6:
  clock_freq = 1800000000;
  break;
 case 0xd:
  clock_freq = 1600000000;
  break;
 case 0x14:
  clock_freq = 1333000000;
  break;
 default:
  device_printf(dev, "Cannot guess clock freq with reg %x\n",
       reg & 0x1f);
  return (ENXIO);
  break;
 };

 ap806_clk_cluster_0.freq = clock_freq;
 ap806_clk_cluster_1.freq = clock_freq;
 clkdom = clkdom_create(dev);

 clknode_fixed_register(clkdom, &ap806_clk_cluster_0);
 clknode_fixed_register(clkdom, &ap806_clk_cluster_1);
 clknode_fixed_register(clkdom, &ap806_clk_fixed);
 clknode_fixed_register(clkdom, &ap806_clk_mss);
 clknode_fixed_register(clkdom, &ap806_clk_sdio);

 clkdom_finit(clkdom);

 if (bootverbose)
  clkdom_dump(clkdom);
 return (0);
}
