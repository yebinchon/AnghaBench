
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zy7_slcr_softc {int dummy; } ;


 int RD4 (struct zy7_slcr_softc*,int ) ;
 int WR4 (struct zy7_slcr_softc*,int ,int) ;
 int ZY7_SLCR_PSS_RST_CTRL ;
 int ZY7_SLCR_PSS_RST_CTRL_SOFT_RESET ;
 int ZY7_SLCR_REBOOT_STAT ;
 struct zy7_slcr_softc* zy7_slcr_softc_p ;
 int zy7_slcr_unlock (struct zy7_slcr_softc*) ;

__attribute__((used)) static void
zy7_slcr_cpu_reset(void)
{
 struct zy7_slcr_softc *sc = zy7_slcr_softc_p;


 zy7_slcr_unlock(sc);




 WR4(sc, ZY7_SLCR_REBOOT_STAT,
     RD4(sc, ZY7_SLCR_REBOOT_STAT) & 0xf0ffffff);


 WR4(sc, ZY7_SLCR_PSS_RST_CTRL, ZY7_SLCR_PSS_RST_CTRL_SOFT_RESET);

 for (;;)
  ;
}
