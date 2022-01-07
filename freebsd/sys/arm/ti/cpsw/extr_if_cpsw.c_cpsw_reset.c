
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int callout; } ;
struct cpsw_softc {TYPE_1__ watchdog; } ;


 int CPSW_CPDMA_RX_CONTROL ;
 int CPSW_CPDMA_RX_CP (int) ;
 int CPSW_CPDMA_RX_HDP (int) ;
 int CPSW_CPDMA_RX_INTMASK_CLEAR ;
 int CPSW_CPDMA_SOFT_RESET ;
 int CPSW_CPDMA_TX_CONTROL ;
 int CPSW_CPDMA_TX_CP (int) ;
 int CPSW_CPDMA_TX_HDP (int) ;
 int CPSW_CPDMA_TX_INTMASK_CLEAR ;
 int CPSW_SL_SOFT_RESET (int) ;
 int CPSW_SS_SOFT_RESET ;
 int CPSW_WR_C_MISC_EN (int) ;
 int CPSW_WR_C_RX_EN (int) ;
 int CPSW_WR_C_RX_THRESH_EN (int) ;
 int CPSW_WR_C_TX_EN (int) ;
 int CPSW_WR_SOFT_RESET ;
 int callout_stop (int *) ;
 int cpsw_read_4 (struct cpsw_softc*,int ) ;
 int cpsw_write_4 (struct cpsw_softc*,int ,int) ;

__attribute__((used)) static void
cpsw_reset(struct cpsw_softc *sc)
{
 int i;

 callout_stop(&sc->watchdog.callout);


 cpsw_write_4(sc, CPSW_WR_SOFT_RESET, 1);
 while (cpsw_read_4(sc, CPSW_WR_SOFT_RESET) & 1)
  ;


 for (i = 0; i < 3; ++i) {
  cpsw_write_4(sc, CPSW_WR_C_RX_THRESH_EN(i), 0x00);
  cpsw_write_4(sc, CPSW_WR_C_TX_EN(i), 0x00);
  cpsw_write_4(sc, CPSW_WR_C_RX_EN(i), 0x00);
  cpsw_write_4(sc, CPSW_WR_C_MISC_EN(i), 0x00);
 }


 cpsw_write_4(sc, CPSW_SS_SOFT_RESET, 1);
 while (cpsw_read_4(sc, CPSW_SS_SOFT_RESET) & 1)
  ;


 for (i = 0; i < 2; i++) {

  cpsw_write_4(sc, CPSW_SL_SOFT_RESET(i), 1);
  while (cpsw_read_4(sc, CPSW_SL_SOFT_RESET(i)) & 1)
   ;
 }


 cpsw_write_4(sc, CPSW_CPDMA_SOFT_RESET, 1);
 while (cpsw_read_4(sc, CPSW_CPDMA_SOFT_RESET) & 1)
  ;


 cpsw_write_4(sc, CPSW_CPDMA_TX_CONTROL, 0);
 cpsw_write_4(sc, CPSW_CPDMA_RX_CONTROL, 0);


 for (i = 0; i < 8; i++) {
  cpsw_write_4(sc, CPSW_CPDMA_TX_HDP(i), 0);
  cpsw_write_4(sc, CPSW_CPDMA_RX_HDP(i), 0);
  cpsw_write_4(sc, CPSW_CPDMA_TX_CP(i), 0);
  cpsw_write_4(sc, CPSW_CPDMA_RX_CP(i), 0);
 }


 cpsw_write_4(sc, CPSW_CPDMA_RX_INTMASK_CLEAR, 0xFFFFFFFF);
 cpsw_write_4(sc, CPSW_CPDMA_TX_INTMASK_CLEAR, 0xFFFFFFFF);
}
