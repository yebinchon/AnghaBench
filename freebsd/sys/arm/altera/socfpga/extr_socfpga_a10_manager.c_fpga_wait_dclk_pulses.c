
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpgamgr_a10_softc {int dev; } ;


 int DELAY (int) ;
 int FPGAMGR_DCLKCNT ;
 int FPGAMGR_DCLKSTAT ;
 int READ4 (struct fpgamgr_a10_softc*,int ) ;
 int WRITE4 (struct fpgamgr_a10_softc*,int ,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
fpga_wait_dclk_pulses(struct fpgamgr_a10_softc *sc, int npulses)
{
 int tout;


 if (READ4(sc, FPGAMGR_DCLKSTAT) != 0)
  WRITE4(sc, FPGAMGR_DCLKSTAT, 0x1);


 WRITE4(sc, FPGAMGR_DCLKCNT, npulses);


 tout = 1000;
 while (tout > 0) {
  if (READ4(sc, FPGAMGR_DCLKSTAT) == 1) {
   WRITE4(sc, FPGAMGR_DCLKSTAT, 0x1);
   break;
  }
  tout--;
  DELAY(10);
 }
 if (tout == 0) {
  device_printf(sc->dev,
      "Error: dclkpulses wait timeout\n");
  return (1);
 }

 return (0);
}
