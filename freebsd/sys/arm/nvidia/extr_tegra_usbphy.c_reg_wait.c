
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct usbphy_softc {int dummy; } ;


 int DELAY (int) ;
 int ETIMEDOUT ;
 int RD4 (struct usbphy_softc*,int) ;

__attribute__((used)) static int
reg_wait(struct usbphy_softc *sc, uint32_t reg, uint32_t mask, uint32_t val)
{
 int i;

 for (i = 0; i < 1000; i++) {
  if ((RD4(sc, reg) & mask) == val)
   return (0);
  DELAY(10);
 }
 return (ETIMEDOUT);
}
