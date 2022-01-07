
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct as3722_softc {int dummy; } ;
struct as3722_pincfg {int flags; int * function; } ;
typedef int phandle_t ;
struct TYPE_3__ {int config; int name; } ;


 int ENOENT ;
 int OF_getprop_alloc (int ,char*,void**) ;
 scalar_t__ OF_hasprop (int ,int ) ;
 TYPE_1__* as3722_cfg_names ;
 int nitems (TYPE_1__*) ;

__attribute__((used)) static int
as3722_pinmux_read_node(struct as3722_softc *sc, phandle_t node,
     struct as3722_pincfg *cfg, char **pins, int *lpins)
{
 int rv, i;

 *lpins = OF_getprop_alloc(node, "pins", (void **)pins);
 if (*lpins <= 0)
  return (ENOENT);


 rv = OF_getprop_alloc(node, "function", (void **)&cfg->function);
 if (rv <= 0)
  cfg->function = ((void*)0);


 for (i = 0; i < nitems(as3722_cfg_names); i++) {
  if (OF_hasprop(node, as3722_cfg_names[i].name))
   cfg->flags |= as3722_cfg_names[i].config;
 }
 return (0);
}
