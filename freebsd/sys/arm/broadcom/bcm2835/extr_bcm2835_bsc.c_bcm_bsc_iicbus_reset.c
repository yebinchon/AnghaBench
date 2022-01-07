
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_char ;
struct bcm_bsc_softc {int * sc_iicbus; } ;
typedef int device_t ;


 int BCM_BSC_CLOCK ;
 int BCM_BSC_CORE_CLK ;
 int BCM_BSC_LOCK (struct bcm_bsc_softc*) ;
 int BCM_BSC_UNLOCK (struct bcm_bsc_softc*) ;
 int BCM_BSC_WRITE (struct bcm_bsc_softc*,int ,int) ;
 int IICBUS_GET_FREQUENCY (int *,int ) ;
 int IIC_ENOADDR ;
 int bcm_bsc_reset (struct bcm_bsc_softc*) ;
 struct bcm_bsc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bcm_bsc_iicbus_reset(device_t dev, u_char speed, u_char addr, u_char *oldaddr)
{
 struct bcm_bsc_softc *sc;
 uint32_t busfreq;

 sc = device_get_softc(dev);
 BCM_BSC_LOCK(sc);
 bcm_bsc_reset(sc);
 if (sc->sc_iicbus == ((void*)0))
  busfreq = 100000;
 else
  busfreq = IICBUS_GET_FREQUENCY(sc->sc_iicbus, speed);
 BCM_BSC_WRITE(sc, BCM_BSC_CLOCK, BCM_BSC_CORE_CLK / busfreq);
 BCM_BSC_UNLOCK(sc);

 return (IIC_ENOADDR);
}
