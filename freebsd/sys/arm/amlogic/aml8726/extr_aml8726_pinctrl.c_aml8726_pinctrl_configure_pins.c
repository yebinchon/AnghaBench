
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int pud_ctrl; struct aml8726_pinctrl_function* func; struct aml8726_pinctrl_pkg_pin* ppin; } ;
struct aml8726_pinctrl_softc {TYPE_1__ soc; } ;
struct aml8726_pinctrl_pkg_pin {int pull_bits; int aobus; int pull_addr; int * pkg_name; } ;
struct aml8726_pinctrl_pin {char* name; int mux_bits; int mux_addr; int * pkg_name; } ;
struct aml8726_pinctrl_function {char* name; struct aml8726_pinctrl_pin* pins; } ;
typedef scalar_t__ ssize_t ;
typedef int phandle_t ;
typedef enum aml8726_pinctrl_pull_mode { ____Placeholder_aml8726_pinctrl_pull_mode } aml8726_pinctrl_pull_mode ;
typedef int device_t ;


 int AML_PINCTRL_LOCK (struct aml8726_pinctrl_softc*) ;
 int AML_PINCTRL_UNLOCK (struct aml8726_pinctrl_softc*) ;
 int AOMUX_READ_4 (struct aml8726_pinctrl_softc*,int ) ;
 int AOMUX_WRITE_4 (struct aml8726_pinctrl_softc*,int ,int) ;
 int AOPEN_READ_4 (struct aml8726_pinctrl_softc*,int ) ;
 int AOPEN_WRITE_4 (struct aml8726_pinctrl_softc*,int ,int) ;
 int AOPUD_READ_4 (struct aml8726_pinctrl_softc*,int ) ;
 int AOPUD_WRITE_4 (struct aml8726_pinctrl_softc*,int ,int) ;
 int ENXIO ;
 int MUX_READ_4 (struct aml8726_pinctrl_softc*,int ) ;
 int MUX_WRITE_4 (struct aml8726_pinctrl_softc*,int ,int) ;
 scalar_t__ OF_getprop_alloc (int ,char*,void**) ;
 int OF_node_from_xref (int ) ;
 int OF_prop_free (char*) ;
 int PEN_READ_4 (struct aml8726_pinctrl_softc*,int ) ;
 int PEN_WRITE_4 (struct aml8726_pinctrl_softc*,int ,int) ;
 int PUD_READ_4 (struct aml8726_pinctrl_softc*,int ) ;
 int PUD_WRITE_4 (struct aml8726_pinctrl_softc*,int ,int) ;




 int aml8726_unknown_pm ;
 struct aml8726_pinctrl_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 scalar_t__ strcmp (int *,int *) ;
 scalar_t__ strncmp (char*,char*,scalar_t__) ;

__attribute__((used)) static int
aml8726_pinctrl_configure_pins(device_t dev, phandle_t cfgxref)
{
 struct aml8726_pinctrl_softc *sc = device_get_softc(dev);
 struct aml8726_pinctrl_function *cf;
 struct aml8726_pinctrl_function *f;
 struct aml8726_pinctrl_pkg_pin *pp;
 struct aml8726_pinctrl_pin *cp;
 struct aml8726_pinctrl_pin *p;
 enum aml8726_pinctrl_pull_mode pm;
 char *function_name;
 char *pins;
 char *pin_name;
 char *pull;
 phandle_t node;
 ssize_t len;
 uint32_t value;

 node = OF_node_from_xref(cfgxref);

 len = OF_getprop_alloc(node, "amlogic,function",
     (void **)&function_name);

 if (len < 0) {
  device_printf(dev,
      "missing amlogic,function attribute in FDT\n");
  return (ENXIO);
 }

 for (f = sc->soc.func; f->name != ((void*)0); f++)
  if (strncmp(f->name, function_name, len) == 0)
   break;

 if (f->name == ((void*)0)) {
  device_printf(dev, "unknown function attribute %.*s in FDT\n",
      len, function_name);
  OF_prop_free(function_name);
  return (ENXIO);
 }

 OF_prop_free(function_name);

 len = OF_getprop_alloc(node, "amlogic,pull",
     (void **)&pull);

 pm = aml8726_unknown_pm;

 if (len > 0) {
  if (strncmp(pull, "enable", len) == 0)
   pm = 129;
  else if (strncmp(pull, "disable", len) == 0)
   pm = 131;
  else if (strncmp(pull, "down", len) == 0)
   pm = 130;
  else if (strncmp(pull, "up", len) == 0)
   pm = 128;
  else {
   device_printf(dev,
       "unknown pull attribute %.*s in FDT\n",
       len, pull);
   OF_prop_free(pull);
   return (ENXIO);
  }
 }

 OF_prop_free(pull);




 switch (pm) {
 case 130:
 case 128:
  if (sc->soc.pud_ctrl == 0) {
   device_printf(dev,
       "SoC doesn't support setting pull direction.\n");
   return (ENXIO);
  }
  break;
 default:
  break;
 }

 len = OF_getprop_alloc(node, "amlogic,pins",
     (void **)&pins);

 if (len < 0) {
  device_printf(dev, "missing amlogic,pins attribute in FDT\n");
  return (ENXIO);
 }

 pin_name = pins;

 while (len) {
  for (p = f->pins; p->name != ((void*)0); p++)
   if (strncmp(p->name, pin_name, len) == 0)
    break;

  if (p->name == ((void*)0)) {

   device_printf(dev, "unknown pin attribute %.*s in FDT\n",
       len, pin_name);
  }


  while (*pin_name && len) {
   pin_name++;
   len--;
  }
  if (len) {
   pin_name++;
   len--;
  }

  if (p->name == ((void*)0))
   continue;

  for (pp = sc->soc.ppin; pp->pkg_name != ((void*)0); pp++)
   if (strcmp(pp->pkg_name, p->pkg_name) == 0)
    break;

  if (pp->pkg_name == ((void*)0)) {
   device_printf(dev,
       "missing entry for package pin %s\n",
       p->pkg_name);
   continue;
  }

  if (pm != aml8726_unknown_pm && pp->pull_bits == 0x00000000) {
   device_printf(dev,
       "missing pull info for package pin %s\n",
       p->pkg_name);
   continue;
  }

  AML_PINCTRL_LOCK(sc);
  for (cf = sc->soc.func; cf->name != ((void*)0); cf++)
   for (cp = cf->pins; cp->name != ((void*)0); cp++) {
    if (cp == p)
     continue;
    if (strcmp(cp->pkg_name, p->pkg_name) != 0)
     continue;
    if (cp->mux_bits == 0)
     continue;
    if (pp->aobus == 0) {
     value = MUX_READ_4(sc, cp->mux_addr);
     value &= ~cp->mux_bits;
     MUX_WRITE_4(sc, cp->mux_addr, value);
    } else {
     value = AOMUX_READ_4(sc, cp->mux_addr);
     value &= ~cp->mux_bits;
     AOMUX_WRITE_4(sc, cp->mux_addr, value);
    }
   }







  if (p->mux_bits != 0) {
   if (pp->aobus == 0) {
    value = MUX_READ_4(sc, p->mux_addr);
    value |= p->mux_bits;
    MUX_WRITE_4(sc, p->mux_addr, value);
   } else {
    value = AOMUX_READ_4(sc, p->mux_addr);
    value |= p->mux_bits;
    AOMUX_WRITE_4(sc, p->mux_addr, value);
   }
  }





  switch (pm) {
  case 130:
  case 128:
   if (pp->aobus == 0) {
    value = PUD_READ_4(sc, pp->pull_addr);
    if (pm == 130)
     value &= ~pp->pull_bits;
    else
     value |= pp->pull_bits;
    PUD_WRITE_4(sc, pp->pull_addr, value);
   } else {
    value = AOPUD_READ_4(sc, pp->pull_addr);
    if (pm == 130)
     value &= ~(pp->pull_bits << 16);
    else
     value |= (pp->pull_bits << 16);
    AOPUD_WRITE_4(sc, pp->pull_addr, value);
   }

  case 131:
  case 129:
   if (pp->aobus == 0) {
    value = PEN_READ_4(sc, pp->pull_addr);
    if (pm == 131)
     value &= ~pp->pull_bits;
    else
     value |= pp->pull_bits;
    PEN_WRITE_4(sc, pp->pull_addr, value);
   } else {
    value = AOPEN_READ_4(sc, pp->pull_addr);
    if (pm == 131)
     value &= ~pp->pull_bits;
    else
     value |= pp->pull_bits;
    AOPEN_WRITE_4(sc, pp->pull_addr, value);
   }
   break;
  default:
   break;
  }

  AML_PINCTRL_UNLOCK(sc);
 }

 OF_prop_free(pins);

 return (0);
}
