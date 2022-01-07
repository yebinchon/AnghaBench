
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct rsb_softc {int dummy; } ;
typedef int device_t ;


 int ETIMEDOUT ;
 int IIC_ENOADDR ;
 int RSB_CTRL ;
 int RSB_LOCK (struct rsb_softc*) ;
 int RSB_READ (struct rsb_softc*,int ) ;
 int RSB_RESET_RETRY ;
 int RSB_UNLOCK (struct rsb_softc*) ;
 int RSB_WRITE (struct rsb_softc*,int ,int) ;
 int SOFT_RESET ;
 struct rsb_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
rsb_reset(device_t dev, u_char speed, u_char addr, u_char *oldaddr)
{
 struct rsb_softc *sc;
 int retry;

 sc = device_get_softc(dev);

 RSB_LOCK(sc);


 RSB_WRITE(sc, RSB_CTRL, SOFT_RESET);
 for (retry = RSB_RESET_RETRY; retry > 0; retry--)
  if ((RSB_READ(sc, RSB_CTRL) & SOFT_RESET) == 0)
   break;

 RSB_UNLOCK(sc);

 if (retry == 0) {
  device_printf(dev, "soft reset timeout\n");
  return (ETIMEDOUT);
 }

 return (IIC_ENOADDR);
}
