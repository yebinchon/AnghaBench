
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct as3722_softc {int dev; } ;
struct as3722_pincfg {char* function; } ;
typedef int phandle_t ;


 int OF_prop_free (char*) ;
 int as3722_pinmux_config_node (struct as3722_softc*,char*,struct as3722_pincfg*) ;
 int as3722_pinmux_read_node (struct as3722_softc*,int ,struct as3722_pincfg*,char**,int*) ;
 int device_printf (int ,char*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static int
as3722_pinmux_process_node(struct as3722_softc *sc, phandle_t node)
{
 struct as3722_pincfg cfg;
 char *pins, *pname;
 int i, len, lpins, rv;

 rv = as3722_pinmux_read_node(sc, node, &cfg, &pins, &lpins);
 if (rv != 0)
  return (rv);

 len = 0;
 pname = pins;
 do {
  i = strlen(pname) + 1;
  rv = as3722_pinmux_config_node(sc, pname, &cfg);
  if (rv != 0) {
   device_printf(sc->dev,
       "Cannot configure pin: %s: %d\n", pname, rv);
  }
  len += i;
  pname += i;
 } while (len < lpins);

 if (pins != ((void*)0))
  OF_prop_free(pins);
 if (cfg.function != ((void*)0))
  OF_prop_free(cfg.function);

 return (rv);
}
