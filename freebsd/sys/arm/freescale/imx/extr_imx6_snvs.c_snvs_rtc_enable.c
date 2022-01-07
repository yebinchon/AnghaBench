
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct snvs_softc {int lpcr; } ;


 int LPCR_SRTC_ENV ;
 int RD4 (struct snvs_softc*,int ) ;
 int SNVS_LPCR ;
 int WR4 (struct snvs_softc*,int ,int) ;

__attribute__((used)) static void
snvs_rtc_enable(struct snvs_softc *sc, bool enable)
{
 uint32_t enbit;

 if (enable)
  sc->lpcr |= LPCR_SRTC_ENV;
 else
  sc->lpcr &= ~LPCR_SRTC_ENV;
 WR4(sc, SNVS_LPCR, sc->lpcr);


 enbit = sc->lpcr & LPCR_SRTC_ENV;
 while ((RD4(sc, SNVS_LPCR) & LPCR_SRTC_ENV) != enbit)
  continue;
}
