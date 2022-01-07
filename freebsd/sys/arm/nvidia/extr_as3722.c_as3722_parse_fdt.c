
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct as3722_softc {int int_pullup; int i2c_pullup; } ;
typedef int phandle_t ;


 scalar_t__ OF_hasprop (int ,char*) ;

__attribute__((used)) static int
as3722_parse_fdt(struct as3722_softc *sc, phandle_t node)
{

 sc->int_pullup =
     OF_hasprop(node, "ams,enable-internal-int-pullup") ? 1 : 0;
 sc->i2c_pullup =
     OF_hasprop(node, "ams,enable-internal-i2c-pullup") ? 1 : 0;
 return 0;
}
