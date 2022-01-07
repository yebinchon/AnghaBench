
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinmux_softc {int dev; } ;
struct pincfg {char* function; } ;
typedef int phandle_t ;


 int OF_prop_free (char*) ;
 int device_printf (int ,char*,char*,int) ;
 int pinmux_config_node (struct pinmux_softc*,char*,struct pincfg*) ;
 int pinmux_read_node (struct pinmux_softc*,int ,struct pincfg*,char**,int*) ;
 int strlen (char*) ;

__attribute__((used)) static int
pinmux_process_node(struct pinmux_softc *sc, phandle_t node)
{
 struct pincfg cfg;
 char *pins, *pname;
 int i, len, lpins, rv;

 rv = pinmux_read_node(sc, node, &cfg, &pins, &lpins);
 if (rv != 0)
  return (rv);

 len = 0;
 pname = pins;
 do {
  i = strlen(pname) + 1;
  rv = pinmux_config_node(sc, pname, &cfg);
  if (rv != 0)
   device_printf(sc->dev,
       "Cannot configure pin: %s: %d\n", pname, rv);

  len += i;
  pname += i;
 } while (len < lpins);

 if (pins != ((void*)0))
  OF_prop_free(pins);
 if (cfg.function != ((void*)0))
  OF_prop_free(cfg.function);
 return (rv);
}
