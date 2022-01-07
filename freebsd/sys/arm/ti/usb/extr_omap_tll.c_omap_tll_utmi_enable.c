
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct omap_tll_softc {int dummy; } ;


 int OMAP_USBTLL_TLL_CHANNEL_CONF (unsigned int) ;
 int OMAP_USBTLL_TLL_SHARED_CONF ;
 int TLL_CHANNEL_CONF_CHANEN ;
 int TLL_CHANNEL_CONF_ULPIDDRMODE ;
 int TLL_CHANNEL_CONF_ULPINOBITSTUFF ;
 int TLL_CHANNEL_CONF_UTMIAUTOIDLE ;
 int TLL_SHARED_CONF_FCLK_IS_ON ;
 int TLL_SHARED_CONF_USB_180D_SDR_EN ;
 int TLL_SHARED_CONF_USB_90D_DDR_EN ;
 int TLL_SHARED_CONF_USB_DIVRATIO_2 ;
 int TLL_SHARED_CONF_USB_DIVRATIO_MASK ;
 int omap_tll_read_4 (struct omap_tll_softc*,int ) ;
 struct omap_tll_softc* omap_tll_sc ;
 int omap_tll_write_4 (struct omap_tll_softc*,int ,int) ;

void
omap_tll_utmi_enable(unsigned int en_mask)
{
 struct omap_tll_softc *sc;
 unsigned int i;
 uint32_t reg;

 sc = omap_tll_sc;
 if (sc == ((void*)0))
  return;




 for (i=0; i<3; i++) {
  reg = omap_tll_read_4(sc, OMAP_USBTLL_TLL_CHANNEL_CONF(i));

  reg &= ~(TLL_CHANNEL_CONF_UTMIAUTOIDLE
     | TLL_CHANNEL_CONF_ULPINOBITSTUFF
     | TLL_CHANNEL_CONF_ULPIDDRMODE);

  omap_tll_write_4(sc, OMAP_USBTLL_TLL_CHANNEL_CONF(i), reg);
 }


 reg = omap_tll_read_4(sc, OMAP_USBTLL_TLL_SHARED_CONF);

 reg &= ~( TLL_SHARED_CONF_USB_90D_DDR_EN
   | TLL_SHARED_CONF_USB_DIVRATIO_MASK);
 reg |= ( TLL_SHARED_CONF_FCLK_IS_ON
   | TLL_SHARED_CONF_USB_DIVRATIO_2
   | TLL_SHARED_CONF_USB_180D_SDR_EN);

 omap_tll_write_4(sc, OMAP_USBTLL_TLL_SHARED_CONF, reg);


 for (i = 0; i < 3; i++) {
  reg = omap_tll_read_4(sc, OMAP_USBTLL_TLL_CHANNEL_CONF(i));


  if ((en_mask & (1 << i)) == 0)
   continue;

  reg |= TLL_CHANNEL_CONF_CHANEN;
  omap_tll_write_4(sc, OMAP_USBTLL_TLL_CHANNEL_CONF(i), reg);
 }
}
