
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct resource {int dummy; } ;
struct TYPE_4__ {TYPE_1__** pcpu; } ;
struct gic_v3_softc {TYPE_2__ gic_redists; } ;
typedef int device_t ;
typedef int bus_size_t ;
struct TYPE_3__ {struct resource res; } ;


 size_t PCPU_GET (int ) ;
 int bus_read_4 (struct resource*,int ) ;
 int cpuid ;
 struct gic_v3_softc* device_get_softc (int ) ;

uint32_t
gic_r_read_4(device_t dev, bus_size_t offset)
{
 struct gic_v3_softc *sc;
 struct resource *rdist;

 sc = device_get_softc(dev);
 rdist = &sc->gic_redists.pcpu[PCPU_GET(cpuid)]->res;
 return (bus_read_4(rdist, offset));
}
