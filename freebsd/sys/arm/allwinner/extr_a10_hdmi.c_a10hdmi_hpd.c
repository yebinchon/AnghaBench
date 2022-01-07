
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct a10hdmi_softc {int mode_hook; } ;
typedef void* device_t ;


 int EVENTHANDLER_INVOKE (int ,void*,int ) ;
 int HDMI_EVENT_CONNECTED ;
 int HDMI_HPD ;
 int HDMI_READ (struct a10hdmi_softc*,int ) ;
 int HPD_DET ;
 int config_intrhook_disestablish (int *) ;
 struct a10hdmi_softc* device_get_softc (void*) ;
 int hdmi_event ;

__attribute__((used)) static void
a10hdmi_hpd(void *arg)
{
 struct a10hdmi_softc *sc;
 device_t dev;
 uint32_t hpd;

 dev = arg;
 sc = device_get_softc(dev);

 hpd = HDMI_READ(sc, HDMI_HPD);
 if ((hpd & HPD_DET) == HPD_DET)
  EVENTHANDLER_INVOKE(hdmi_event, dev, HDMI_EVENT_CONNECTED);

 config_intrhook_disestablish(&sc->mode_hook);
}
