
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {uintptr_t vccq; uintptr_t timing; } ;
struct TYPE_8__ {TYPE_3__ ios; } ;
struct TYPE_5__ {uintptr_t bus_mode; uintptr_t bus_width; uintptr_t chip_select; uintptr_t clock; uintptr_t power_mode; uintptr_t vdd; } ;
struct TYPE_6__ {uintptr_t mode; uintptr_t ocr; TYPE_1__ ios; } ;
struct aml8726_mmc_softc {TYPE_4__ sc_host; TYPE_2__ host; } ;
typedef int device_t ;


 int EINVAL ;
 struct aml8726_mmc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
aml8726_mmc_write_ivar(device_t bus, device_t child,
    int which, uintptr_t value)
{
 struct aml8726_mmc_softc *sc = device_get_softc(bus);

 switch (which) {
 case 142:
  sc->host.ios.bus_mode = value;
  break;
 case 141:
  sc->host.ios.bus_width = value;
  break;
 case 139:
  sc->host.ios.chip_select = value;
  break;
 case 138:
  sc->host.ios.clock = value;
  break;
 case 133:
  sc->host.mode = value;
  break;
 case 132:
  sc->host.ocr = value;
  break;
 case 131:
  sc->host.ios.power_mode = value;
  break;
 case 128:
  sc->host.ios.vdd = value;
  break;
 case 129:
  sc->sc_host.ios.vccq = value;
  break;
 case 130:
  sc->sc_host.ios.timing = value;
  break;

 case 140:
 case 135:
 case 136:
 case 137:
 case 134:
 default:
  return (EINVAL);
 }

 return (0);
}
