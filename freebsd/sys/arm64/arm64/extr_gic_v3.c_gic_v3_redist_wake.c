
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct gic_v3_softc {int dev; } ;


 int DELAY (int) ;
 int GICR_WAKER ;
 int GICR_WAKER_CA ;
 int GICR_WAKER_PS ;
 int PCPU_GET (int ) ;
 scalar_t__ bootverbose ;
 int cpuid ;
 int device_printf (int ,char*,int ) ;
 int gic_r_read (struct gic_v3_softc*,int,int ) ;
 int gic_r_write (struct gic_v3_softc*,int,int ,int) ;
 int panic (char*,int ) ;

__attribute__((used)) static int
gic_v3_redist_wake(struct gic_v3_softc *sc)
{
 uint32_t waker;
 size_t us_left = 1000000;

 waker = gic_r_read(sc, 4, GICR_WAKER);

 waker &= ~GICR_WAKER_PS;
 gic_r_write(sc, 4, GICR_WAKER, waker);




 while ((gic_r_read(sc, 4, GICR_WAKER) & GICR_WAKER_CA) != 0) {
  DELAY(1);
  if (us_left-- == 0) {
   panic("Could not wake Re-Distributor for CPU%u",
       PCPU_GET(cpuid));
  }
 }

 if (bootverbose) {
  device_printf(sc->dev, "CPU%u Re-Distributor woke up\n",
      PCPU_GET(cpuid));
 }

 return (0);
}
