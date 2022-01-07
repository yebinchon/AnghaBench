
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct tmc_softc {int res; } ;
struct endpoint {int dummy; } ;
struct TYPE_2__ {int low; int high; int bufsize; } ;
struct coresight_event {TYPE_1__ etr; } ;
typedef int device_t ;


 int AXICTL_AXCACHE_OS ;
 int AXICTL_PROT_CTRL_BIT1 ;
 int AXICTL_WRBURSTLEN_16 ;
 int FFCR_EN_FMT ;
 int FFCR_EN_TI ;
 int FFCR_FON_FLIN ;
 int FFCR_FON_TRIG_EVT ;
 int FFCR_TRIGON_TRIGIN ;
 int MODE_CIRCULAR_BUFFER ;
 int STS_FULL ;
 int STS_TMCREADY ;
 int TMC_AXICTL ;
 int TMC_DBAHI ;
 int TMC_DBALO ;
 int TMC_FFCR ;
 int TMC_MODE ;
 int TMC_RRP ;
 int TMC_RSZ ;
 int TMC_RWP ;
 int TMC_STS ;
 int TMC_TRG ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int) ;
 struct tmc_softc* device_get_softc (int ) ;
 int tmc_start (int ) ;
 int tmc_stop (int ) ;

__attribute__((used)) static int
tmc_configure_etr(device_t dev, struct endpoint *endp,
    struct coresight_event *event)
{
 struct tmc_softc *sc;
 uint32_t reg;

 sc = device_get_softc(dev);

 tmc_stop(dev);

 do {
  reg = bus_read_4(sc->res, TMC_STS);
 } while ((reg & STS_TMCREADY) == 0);


 bus_write_4(sc->res, TMC_MODE, MODE_CIRCULAR_BUFFER);

 reg = AXICTL_PROT_CTRL_BIT1;
 reg |= AXICTL_WRBURSTLEN_16;






 reg |= AXICTL_AXCACHE_OS;
 bus_write_4(sc->res, TMC_AXICTL, reg);

 reg = FFCR_EN_FMT | FFCR_EN_TI | FFCR_FON_FLIN |
     FFCR_FON_TRIG_EVT | FFCR_TRIGON_TRIGIN;
 bus_write_4(sc->res, TMC_FFCR, reg);

 bus_write_4(sc->res, TMC_TRG, 8);

 bus_write_4(sc->res, TMC_DBALO, event->etr.low);
 bus_write_4(sc->res, TMC_DBAHI, event->etr.high);
 bus_write_4(sc->res, TMC_RSZ, event->etr.bufsize / 4);

 bus_write_4(sc->res, TMC_RRP, event->etr.low);
 bus_write_4(sc->res, TMC_RWP, event->etr.low);

 reg = bus_read_4(sc->res, TMC_STS);
 reg &= ~STS_FULL;
 bus_write_4(sc->res, TMC_STS, reg);

 tmc_start(dev);

 return (0);
}
