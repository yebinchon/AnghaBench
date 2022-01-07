
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timespec {int dummy; } ;
struct snvs_softc {int dev; } ;
typedef int sbintime_t ;
typedef int device_t ;


 int CLOCK_DBG_WRITE ;
 int SBT_LSB ;
 int SNVS_LPSRTCLR ;
 int SNVS_LPSRTCMR ;
 int WR4 (struct snvs_softc*,int ,int ) ;
 int clock_dbgprint_ts (int ,int ,struct timespec*) ;
 struct snvs_softc* device_get_softc (int ) ;
 int snvs_rtc_enable (struct snvs_softc*,int) ;
 int tstosbt (struct timespec) ;

__attribute__((used)) static int
snvs_settime(device_t dev, struct timespec *ts)
{
 struct snvs_softc *sc;
 sbintime_t sbt;

 sc = device_get_softc(dev);







 sbt = tstosbt(*ts);
 sbt += 2 << SBT_LSB;
 snvs_rtc_enable(sc, 0);
 WR4(sc, SNVS_LPSRTCMR, (uint32_t)(sbt >> (SBT_LSB + 32)));
 WR4(sc, SNVS_LPSRTCLR, (uint32_t)(sbt >> (SBT_LSB)));
 snvs_rtc_enable(sc, 1);

 clock_dbgprint_ts(sc->dev, CLOCK_DBG_WRITE, ts);

 return (0);
}
