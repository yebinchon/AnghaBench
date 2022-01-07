
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tcon_softc {int dummy; } ;


 int TCON0_CTRL1 ;
 int TCON_BYPASS ;
 int WRITE4 (struct tcon_softc*,int ,int ) ;
 struct tcon_softc* tcon_sc ;

uint32_t
tcon_bypass(void)
{
 struct tcon_softc *sc;

 if (tcon_sc == ((void*)0))
  return (1);

 sc = tcon_sc;

 WRITE4(tcon_sc, TCON0_CTRL1, TCON_BYPASS);

 return (0);
}
