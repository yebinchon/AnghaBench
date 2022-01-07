
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_sdhost_softc {int mtx; } ;


 int DELAY (int) ;
 int HC_CMD_ENABLE ;
 int HC_COMMAND ;
 int MA_OWNED ;
 int RD4 (struct bcm_sdhost_softc*,int ) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static inline int
bcm_sdhost_waitcommand(struct bcm_sdhost_softc *sc)
{
 int timeout = 1000;

 mtx_assert(&sc->mtx, MA_OWNED);

 while ((RD4(sc, HC_COMMAND) & HC_CMD_ENABLE) && --timeout > 0) {
  DELAY(100);
 }

 return ((timeout > 0) ? 0 : 1);
}
