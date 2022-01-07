
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct i2c_softc {int mutex; } ;
typedef int device_t ;


 int DPRINTF (char*) ;
 int IIC_NOERR ;
 struct i2c_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
i2c_reset(device_t dev, u_char speed, u_char addr, u_char *oldadr)
{
 struct i2c_softc *sc;

 sc = device_get_softc(dev);

 DPRINTF("i2c reset\n");

 mtx_lock(&sc->mutex);



 mtx_unlock(&sc->mutex);

 return (IIC_NOERR);
}
