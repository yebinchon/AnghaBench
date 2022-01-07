
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct a10fb_softc {int dummy; } ;


 int GCTL_TCON_EN ;
 int IO0_OUTPUT_TRI_EN ;
 int IO1_OUTPUT_TRI_EN ;
 int TCON1_IO_TRI ;
 int TCON_GCTL ;
 int TCON_READ (struct a10fb_softc*,int ) ;
 int TCON_WRITE (struct a10fb_softc*,int ,int) ;

__attribute__((used)) static void
a10fb_enable_tcon(struct a10fb_softc *sc, int onoff)
{
 uint32_t val;


 val = TCON_READ(sc, TCON_GCTL);
 if (onoff)
  val |= GCTL_TCON_EN;
 else
  val &= ~GCTL_TCON_EN;
 TCON_WRITE(sc, TCON_GCTL, val);


 val = TCON_READ(sc, TCON1_IO_TRI);
 if (onoff)
  val &= ~(IO0_OUTPUT_TRI_EN | IO1_OUTPUT_TRI_EN);
 else
  val |= (IO0_OUTPUT_TRI_EN | IO1_OUTPUT_TRI_EN);
 TCON_WRITE(sc, TCON1_IO_TRI, val);
}
