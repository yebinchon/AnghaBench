
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vccq; } ;
struct TYPE_4__ {TYPE_1__ ios; } ;
struct aw_mmc_softc {int aw_dev; int * aw_reg_vqmmc; TYPE_2__ aw_host; } ;
typedef int device_t ;


 int EINVAL ;
 int EOPNOTSUPP ;
 struct aw_mmc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int,int) ;
 int regulator_set_voltage (int *,int,int) ;



__attribute__((used)) static int
aw_mmc_switch_vccq(device_t bus, device_t child)
{
 struct aw_mmc_softc *sc;
 int uvolt, err;

 sc = device_get_softc(bus);

 if (sc->aw_reg_vqmmc == ((void*)0))
  return EOPNOTSUPP;

 switch (sc->aw_host.ios.vccq) {
 case 129:
  uvolt = 1800000;
  break;
 case 128:
  uvolt = 3300000;
  break;
 default:
  return EINVAL;
 }

 err = regulator_set_voltage(sc->aw_reg_vqmmc, uvolt, uvolt);
 if (err != 0) {
  device_printf(sc->aw_dev,
      "Cannot set vqmmc to %d<->%d\n",
      uvolt,
      uvolt);
  return (err);
 }

 return (0);
}
