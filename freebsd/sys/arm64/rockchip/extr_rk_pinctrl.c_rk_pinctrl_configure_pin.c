
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct syscon {int dummy; } ;
struct rk_pinctrl_softc {TYPE_2__* conf; int dev; } ;
typedef int phandle_t ;
struct TYPE_4__ {int iomux_nbanks; int (* get_pd_offset ) (struct rk_pinctrl_softc*,int) ;TYPE_1__* iomux_conf; struct syscon* (* get_syscon ) (struct rk_pinctrl_softc*,int) ;} ;
struct TYPE_3__ {int bank; int subbank; int offset; int nbits; } ;


 int OF_node_from_xref (int) ;
 int SYSCON_MODIFY_4 (struct syscon*,int,int,int) ;
 int device_printf (int ,char*,int,int) ;
 int rk_pinctrl_get_fixup (struct rk_pinctrl_softc*,int,int,int*,int*,int*) ;
 int rk_pinctrl_handle_io (struct rk_pinctrl_softc*,int ,int,int) ;
 int rk_pinctrl_parse_bias (int ) ;
 int rk_pinctrl_parse_drive (struct rk_pinctrl_softc*,int ,int,int,int*,int*) ;
 struct syscon* stub1 (struct rk_pinctrl_softc*,int) ;
 int stub2 (struct rk_pinctrl_softc*,int) ;

__attribute__((used)) static void
rk_pinctrl_configure_pin(struct rk_pinctrl_softc *sc, uint32_t *pindata)
{
 phandle_t pin_conf;
 struct syscon *syscon;
 uint32_t bank, subbank, pin, function, bias;
 uint32_t bit, mask, reg, drive;
 int i, rv;

 bank = pindata[0];
 pin = pindata[1];
 function = pindata[2];
 pin_conf = OF_node_from_xref(pindata[3]);
 subbank = pin / 8;

 for (i = 0; i < sc->conf->iomux_nbanks; i++)
  if (sc->conf->iomux_conf[i].bank == bank &&
      sc->conf->iomux_conf[i].subbank == subbank)
   break;

 if (i == sc->conf->iomux_nbanks) {
  device_printf(sc->dev, "Unknown pin %d in bank %d\n", pin,
      bank);
  return;
 }


 syscon = sc->conf->get_syscon(sc, bank);


 reg = sc->conf->iomux_conf[i].offset;
 switch (sc->conf->iomux_conf[i].nbits) {
 case 4:
  if ((pin % 8) >= 4)
   reg += 0x4;
  bit = (pin % 4) * 4;
  mask = (0xF << bit);
  break;
 case 3:
  if ((pin % 8) >= 5)
   reg += 4;
  bit = (pin % 8 % 5) * 3;
  mask = (0x7 << bit);
  break;
 case 2:
  bit = (pin % 8) * 2;
  mask = (0x3 << bit);
  break;
 default:
  device_printf(sc->dev,
      "Unknown pin stride width %d in bank %d\n",
      sc->conf->iomux_conf[i].nbits, bank);
  return;
 }
 rk_pinctrl_get_fixup(sc, bank, pin, &reg, &mask, &bit);







 SYSCON_MODIFY_4(syscon, reg, mask, function << bit | (mask << 16));


 bias = rk_pinctrl_parse_bias(pin_conf);
 if (bias >= 0) {
  reg = sc->conf->get_pd_offset(sc, bank);

  reg += bank * 0x10 + ((pin / 8) * 0x4);
  bit = (pin % 8) * 2;
  mask = (0x3 << bit) << 16;
  SYSCON_MODIFY_4(syscon, reg, mask, bias << bit | (mask << 16));
 }


 rv = rk_pinctrl_parse_drive(sc, pin_conf, bank, subbank, &drive, &reg);
 if (rv == 0) {
  bit = (pin % 8) * 2;
  mask = (0x3 << bit) << 16;
  SYSCON_MODIFY_4(syscon, reg, mask, drive << bit | (mask << 16));
 }


 rv = rk_pinctrl_handle_io(sc, pin_conf, bank, pin);
}
