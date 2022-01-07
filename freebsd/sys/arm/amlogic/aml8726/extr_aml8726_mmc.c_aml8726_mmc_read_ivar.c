
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {uintptr_t vccq; int timing; } ;
struct TYPE_8__ {TYPE_3__ ios; } ;
struct TYPE_5__ {int bus_mode; int bus_width; int chip_select; int clock; int power_mode; int vdd; } ;
struct TYPE_6__ {int f_min; int f_max; int host_ocr; int mode; int ocr; int caps; TYPE_1__ ios; } ;
struct aml8726_mmc_softc {TYPE_4__ sc_host; TYPE_2__ host; } ;
typedef int device_t ;


 int AML_MMC_MAX_DMA ;
 int EINVAL ;
 int MMC_SECTOR_SIZE ;
 struct aml8726_mmc_softc* device_get_softc (int ) ;
 int return_req_none ;

__attribute__((used)) static int
aml8726_mmc_read_ivar(device_t bus, device_t child,
    int which, uintptr_t *result)
{
 struct aml8726_mmc_softc *sc = device_get_softc(bus);

 switch (which) {
 case 144:
  *(int *)result = sc->host.ios.bus_mode;
  break;
 case 143:
  *(int *)result = sc->host.ios.bus_width;
  break;
 case 141:
  *(int *)result = sc->host.ios.chip_select;
  break;
 case 140:
  *(int *)result = sc->host.ios.clock;
  break;
 case 138:
  *(int *)result = sc->host.f_min;
  break;
 case 139:
  *(int *)result = sc->host.f_max;
  break;
 case 137:
  *(int *)result = sc->host.host_ocr;
  break;
 case 134:
  *(int *)result = sc->host.mode;
  break;
 case 133:
  *(int *)result = sc->host.ocr;
  break;
 case 132:
  *(int *)result = sc->host.ios.power_mode;
  break;
 case 131:
  *(int *)result = return_req_none;
 case 128:
  *(int *)result = sc->host.ios.vdd;
  break;
 case 129:
  *result = sc->sc_host.ios.vccq;
  break;
 case 142:
  *(int *)result = sc->host.caps;
  break;
 case 130:
  *(int *)result = sc->sc_host.ios.timing;
  break;
 case 135:
  *(int *)result = AML_MMC_MAX_DMA / MMC_SECTOR_SIZE;
  break;
 case 136:
  *(int *)result = 1000000;
  break;
 default:
  return (EINVAL);
 }

 return (0);
}
