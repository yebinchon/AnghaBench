
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fb_size; int fb_vbase; } ;
struct aml8726_fb_softc {TYPE_1__ info; int * res; int ih_cookie; } ;
typedef int device_t ;


 int AML_FB_LOCK_DESTROY (struct aml8726_fb_softc*) ;
 int aml8726_fb_spec ;
 int bus_generic_detach (int ) ;
 int bus_release_resources (int ,int ,int *) ;
 int bus_teardown_intr (int ,int ,int ) ;
 struct aml8726_fb_softc* device_get_softc (int ) ;
 int pmap_unmapdev (int ,int ) ;

__attribute__((used)) static int
aml8726_fb_detach(device_t dev)
{
 struct aml8726_fb_softc *sc = device_get_softc(dev);

 bus_generic_detach(dev);

 bus_teardown_intr(dev, sc->res[3], sc->ih_cookie);

 AML_FB_LOCK_DESTROY(sc);

 bus_release_resources(dev, aml8726_fb_spec, sc->res);

 pmap_unmapdev(sc->info.fb_vbase, sc->info.fb_size);

 return (0);
}
