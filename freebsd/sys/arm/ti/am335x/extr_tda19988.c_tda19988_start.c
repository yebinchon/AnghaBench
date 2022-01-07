
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct tda19988_softc {int sc_version; int sc_dev; } ;
typedef int device_t ;


 int CEC_FRO_IM_CLK_CTRL_GHOST_DIS ;
 int CEC_FRO_IM_CLK_CTRL_IMCLK_SEL ;
 int DDC_ENABLE ;
 int DELAY (int) ;
 int ENAMODS_HDMI ;
 int ENAMODS_RXSENS ;
 int MAIN_CNTRL0_SR ;
 int PLL_SERIAL_2_SRL_NOSC (int) ;
 int SEL_CLK_ENA_SC_CLK ;
 int SEL_CLK_SEL_CLK1 ;

 int TDA_BUFFER_OUT ;
 int TDA_CEC_ENAMODS ;
 int TDA_CEC_FRO_IM_CLK_CTRL ;
 int TDA_DDC_CTRL ;
 int TDA_MAIN_CNTRL0 ;
 int TDA_MUX_VP_VIP_OUT ;
 int TDA_PLL_SCG1 ;
 int TDA_PLL_SCG2 ;
 int TDA_PLL_SCGN1 ;
 int TDA_PLL_SCGN2 ;
 int TDA_PLL_SCGR1 ;
 int TDA_PLL_SCGR2 ;
 int TDA_PLL_SERIAL_1 ;
 int TDA_PLL_SERIAL_2 ;
 int TDA_PLL_SERIAL_3 ;
 int TDA_SEL_CLK ;
 int TDA_SERIALIZER ;
 int TDA_SOFTRESET ;
 int TDA_TX3 ;
 int TDA_VERSION ;
 int TDA_VERSION_MSB ;
 int TDA_VIP_CNTRL_0 ;
 int TDA_VIP_CNTRL_1 ;
 int TDA_VIP_CNTRL_2 ;
 int device_printf (int ,char*,...) ;
 int tda19988_cec_read (struct tda19988_softc*,int,int*) ;
 int tda19988_cec_write (struct tda19988_softc*,int ,int) ;
 scalar_t__ tda19988_read_edid (struct tda19988_softc*) ;
 int tda19988_reg_clear (struct tda19988_softc*,int ,int) ;
 int tda19988_reg_read (struct tda19988_softc*,int ,int*) ;
 int tda19988_reg_set (struct tda19988_softc*,int ,int) ;
 int tda19988_reg_write (struct tda19988_softc*,int ,int) ;

__attribute__((used)) static void
tda19988_start(struct tda19988_softc *sc)
{
 device_t dev;
 uint8_t data;
 uint16_t version;

 dev = sc->sc_dev;

 tda19988_cec_write(sc, TDA_CEC_ENAMODS, ENAMODS_RXSENS | ENAMODS_HDMI);
 DELAY(1000);
 tda19988_cec_read(sc, 0xfe, &data);


 tda19988_reg_set(sc, TDA_SOFTRESET, 3);
 DELAY(100);
 tda19988_reg_clear(sc, TDA_SOFTRESET, 3);
 DELAY(100);


 tda19988_reg_set(sc, TDA_MAIN_CNTRL0, MAIN_CNTRL0_SR);
 tda19988_reg_clear(sc, TDA_MAIN_CNTRL0, MAIN_CNTRL0_SR);


 tda19988_reg_write(sc, TDA_PLL_SERIAL_1, 0x00);
 tda19988_reg_write(sc, TDA_PLL_SERIAL_2, PLL_SERIAL_2_SRL_NOSC(1));
 tda19988_reg_write(sc, TDA_PLL_SERIAL_3, 0x00);
 tda19988_reg_write(sc, TDA_SERIALIZER, 0x00);
 tda19988_reg_write(sc, TDA_BUFFER_OUT, 0x00);
 tda19988_reg_write(sc, TDA_PLL_SCG1, 0x00);
 tda19988_reg_write(sc, TDA_SEL_CLK, SEL_CLK_SEL_CLK1 | SEL_CLK_ENA_SC_CLK);
 tda19988_reg_write(sc, TDA_PLL_SCGN1, 0xfa);
 tda19988_reg_write(sc, TDA_PLL_SCGN2, 0x00);
 tda19988_reg_write(sc, TDA_PLL_SCGR1, 0x5b);
 tda19988_reg_write(sc, TDA_PLL_SCGR2, 0x00);
 tda19988_reg_write(sc, TDA_PLL_SCG2, 0x10);


 tda19988_reg_write(sc, TDA_MUX_VP_VIP_OUT, 0x24);

 version = 0;
 tda19988_reg_read(sc, TDA_VERSION, &data);
 version |= data;
 tda19988_reg_read(sc, TDA_VERSION_MSB, &data);
 version |= (data << 8);


 sc->sc_version = version & ~0x30;
 switch (sc->sc_version) {
  case 128:
   device_printf(dev, "TDA19988\n");
   break;
  default:
   device_printf(dev, "Unknown device: %04x\n", sc->sc_version);
   return;
 }

 tda19988_reg_write(sc, TDA_DDC_CTRL, DDC_ENABLE);
 tda19988_reg_write(sc, TDA_TX3, 39);

     tda19988_cec_write(sc, TDA_CEC_FRO_IM_CLK_CTRL,
            CEC_FRO_IM_CLK_CTRL_GHOST_DIS | CEC_FRO_IM_CLK_CTRL_IMCLK_SEL);

 if (tda19988_read_edid(sc) < 0) {
  device_printf(dev, "failed to read EDID\n");
  return;
 }


 tda19988_reg_write(sc, TDA_VIP_CNTRL_0, 0x23);
 tda19988_reg_write(sc, TDA_VIP_CNTRL_1, 0x01);
 tda19988_reg_write(sc, TDA_VIP_CNTRL_2, 0x45);
}
