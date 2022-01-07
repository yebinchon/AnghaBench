
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_pinmux_softc {int dummy; } ;
struct pincfg {int reg; int conf; } ;
typedef int phandle_t ;
typedef int name ;
typedef int device_t ;


 int ENOENT ;
 int OF_getencprop_alloc_multi (int ,char*,int,void**) ;
 int OF_getprop (int ,char*,char**,int) ;
 int OF_node_from_xref (int ) ;
 int OF_prop_free (struct pincfg*) ;
 scalar_t__ bootverbose ;
 struct ti_pinmux_softc* device_get_softc (int ) ;
 int printf (char*,char*,int,int) ;
 int ti_pinmux_write_2 (struct ti_pinmux_softc*,int,int) ;

__attribute__((used)) static int
ti_pinmux_configure_pins(device_t dev, phandle_t cfgxref)
{
 struct pincfg *cfgtuples, *cfg;
 phandle_t cfgnode;
 int i, ntuples;
 static struct ti_pinmux_softc *sc;

 sc = device_get_softc(dev);
 cfgnode = OF_node_from_xref(cfgxref);
 ntuples = OF_getencprop_alloc_multi(cfgnode, "pinctrl-single,pins",
     sizeof(*cfgtuples), (void **)&cfgtuples);

 if (ntuples < 0)
  return (ENOENT);

 if (ntuples == 0)
  return (0);

 for (i = 0, cfg = cfgtuples; i < ntuples; i++, cfg++) {
  if (bootverbose) {
   char name[32];
   OF_getprop(cfgnode, "name", &name, sizeof(name));
   printf("%16s: muxreg 0x%04x muxval 0x%02x\n",
       name, cfg->reg, cfg->conf);
  }


  ti_pinmux_write_2(sc, cfg->reg, cfg->conf);
 }

 OF_prop_free(cfgtuples);

 return (0);
}
