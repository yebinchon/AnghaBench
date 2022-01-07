
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct aw_reset_softc {int mtx; } ;
typedef int device_t ;


 int RESET_OFFSET (intptr_t) ;
 int RESET_READ (struct aw_reset_softc*,int ) ;
 int RESET_SHIFT (intptr_t) ;
 struct aw_reset_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
aw_reset_is_asserted(device_t dev, intptr_t id, bool *reset)
{
 struct aw_reset_softc *sc;
 uint32_t reg_value;

 sc = device_get_softc(dev);

 mtx_lock(&sc->mtx);
 reg_value = RESET_READ(sc, RESET_OFFSET(id));
 mtx_unlock(&sc->mtx);

 *reset = (reg_value & (1 << RESET_SHIFT(id))) != 0 ? 0 : 1;

 return (0);
}
