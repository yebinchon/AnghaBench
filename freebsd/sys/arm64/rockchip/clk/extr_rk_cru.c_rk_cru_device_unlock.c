
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_cru_softc {int mtx; } ;
typedef int device_t ;


 struct rk_cru_softc* device_get_softc (int ) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
rk_cru_device_unlock(device_t dev)
{
 struct rk_cru_softc *sc;

 sc = device_get_softc(dev);
 mtx_unlock(&sc->mtx);
}
