
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {uintptr_t bus_mode; uintptr_t bus_width; uintptr_t chip_select; uintptr_t clock; uintptr_t power_mode; uintptr_t vdd; uintptr_t vccq; uintptr_t timing; } ;
struct TYPE_4__ {uintptr_t mode; uintptr_t ocr; TYPE_1__ ios; } ;
struct aw_mmc_softc {TYPE_2__ aw_host; } ;
typedef int device_t ;


 int EINVAL ;
 struct aw_mmc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
aw_mmc_write_ivar(device_t bus, device_t child, int which,
    uintptr_t value)
{
 struct aw_mmc_softc *sc;

 sc = device_get_softc(bus);
 switch (which) {
 default:
  return (EINVAL);
 case 142:
  sc->aw_host.ios.bus_mode = value;
  break;
 case 141:
  sc->aw_host.ios.bus_width = value;
  break;
 case 139:
  sc->aw_host.ios.chip_select = value;
  break;
 case 138:
  sc->aw_host.ios.clock = value;
  break;
 case 133:
  sc->aw_host.mode = value;
  break;
 case 132:
  sc->aw_host.ocr = value;
  break;
 case 131:
  sc->aw_host.ios.power_mode = value;
  break;
 case 128:
  sc->aw_host.ios.vdd = value;
  break;
 case 129:
  sc->aw_host.ios.vccq = value;
  break;
 case 130:
  sc->aw_host.ios.timing = value;
  break;

 case 140:
 case 135:
 case 136:
 case 137:
 case 134:
  return (EINVAL);
 }

 return (0);
}
