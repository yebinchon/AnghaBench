
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pol; int pin; int * dev; } ;
struct aml8726_mmc_softc {TYPE_1__ pwr_en; } ;


 int GPIO_PIN_SET (int *,int ,int ) ;
 int PWR_ON_FLAG (int ) ;

__attribute__((used)) static int
aml8726_mmc_power_on(struct aml8726_mmc_softc *sc)
{

 if (sc->pwr_en.dev == ((void*)0))
  return (0);

 return (GPIO_PIN_SET(sc->pwr_en.dev, sc->pwr_en.pin,
     PWR_ON_FLAG(sc->pwr_en.pol)));
}
