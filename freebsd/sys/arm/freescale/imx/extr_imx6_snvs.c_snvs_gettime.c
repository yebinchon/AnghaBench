
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timespec {int dummy; } ;
struct snvs_softc {int dev; } ;
typedef int sbintime_t ;
typedef int device_t ;


 int CLOCK_DBG_READ ;
 int EINVAL ;
 int LPCR_SRTC_ENV ;
 int RD4 (struct snvs_softc*,int ) ;
 int SBT_LSB ;
 int SNVS_LPCR ;
 int SNVS_LPSRTCLR ;
 int SNVS_LPSRTCMR ;
 int clock_dbgprint_ts (int ,int ,struct timespec*) ;
 struct snvs_softc* device_get_softc (int ) ;
 struct timespec sbttots (int) ;

__attribute__((used)) static int
snvs_gettime(device_t dev, struct timespec *ts)
{
 struct snvs_softc *sc;
 sbintime_t counter1, counter2;

 sc = device_get_softc(dev);


 if (!(RD4(sc, SNVS_LPCR) & LPCR_SRTC_ENV)) {
  return (EINVAL);
 }
 do {
  counter1 = (uint64_t)RD4(sc, SNVS_LPSRTCMR) << (SBT_LSB + 32);
  counter1 |= (uint64_t)RD4(sc, SNVS_LPSRTCLR) << (SBT_LSB);
  counter2 = (uint64_t)RD4(sc, SNVS_LPSRTCMR) << (SBT_LSB + 32);
  counter2 |= (uint64_t)RD4(sc, SNVS_LPSRTCLR) << (SBT_LSB);
 } while (counter1 != counter2);

 *ts = sbttots(counter1);

 clock_dbgprint_ts(sc->dev, CLOCK_DBG_READ, ts);

 return (0);
}
