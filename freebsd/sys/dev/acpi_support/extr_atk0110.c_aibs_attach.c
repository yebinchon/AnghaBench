
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aibs_softc {int sc_ggrp_method; int * sc_fan_sysctl; int * sc_temp_sysctl; int * sc_volt_sysctl; int sc_ah; int sc_dev; } ;
typedef int device_t ;


 int AIBS_SENS_TYPE_FAN ;
 int AIBS_SENS_TYPE_TEMP ;
 int AIBS_SENS_TYPE_VOLT ;
 int acpi_get_handle (int ) ;
 int aibs_attach_ggrp (struct aibs_softc*) ;
 int aibs_attach_sif (struct aibs_softc*,int ) ;
 int aibs_detach (int ) ;
 struct aibs_softc* device_get_softc (int ) ;
 int sysctl_remove_oid (int *,int,int) ;

__attribute__((used)) static int
aibs_attach(device_t dev)
{
 struct aibs_softc *sc = device_get_softc(dev);
 int err;

 sc->sc_dev = dev;
 sc->sc_ah = acpi_get_handle(dev);

 sc->sc_ggrp_method = 0;
 err = aibs_attach_sif(sc, AIBS_SENS_TYPE_VOLT);
 if (err == 0)
  err = aibs_attach_sif(sc, AIBS_SENS_TYPE_TEMP);
 if (err == 0)
  err = aibs_attach_sif(sc, AIBS_SENS_TYPE_FAN);

 if (err == 0)
  return (0);


 if (sc->sc_volt_sysctl != ((void*)0))
  sysctl_remove_oid(sc->sc_volt_sysctl, 1, 1);
 if (sc->sc_temp_sysctl != ((void*)0))
  sysctl_remove_oid(sc->sc_temp_sysctl, 1, 1);
 if (sc->sc_fan_sysctl != ((void*)0))
  sysctl_remove_oid(sc->sc_fan_sysctl, 1, 1);
 aibs_detach(dev);

 sc->sc_ggrp_method = 1;
 err = aibs_attach_ggrp(sc);
 return (err);
}
