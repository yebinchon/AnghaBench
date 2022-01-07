
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct am335x_scm_softc {int * sc_temp_oid; } ;
typedef int device_t ;


 int SCM_BGAP_BGOFF ;
 int SCM_BGAP_CTRL ;
 struct am335x_scm_softc* device_get_softc (int ) ;
 int sysctl_remove_oid (int *,int,int ) ;
 int ti_scm_reg_write_4 (int ,int ) ;

__attribute__((used)) static int
am335x_scm_detach(device_t dev)
{
 struct am335x_scm_softc *sc;

 sc = device_get_softc(dev);


 if (sc->sc_temp_oid != ((void*)0))
  sysctl_remove_oid(sc->sc_temp_oid, 1, 0);


 ti_scm_reg_write_4(SCM_BGAP_CTRL, SCM_BGAP_BGOFF);

 return (0);
}
