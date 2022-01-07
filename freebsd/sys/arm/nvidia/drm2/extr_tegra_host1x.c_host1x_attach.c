
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tegra_drm {int dummy; } ;
struct host1x_softc {int * mem_res; TYPE_2__* tegra_drm; int clients; void* dev; } ;
typedef void* device_t ;
struct TYPE_4__ {void* dev; TYPE_2__** dev_private; } ;
struct TYPE_5__ {TYPE_1__ drm_dev; } ;


 int DRM_MEM_DRIVER ;
 int ENXIO ;
 int LOCK_DESTROY (struct host1x_softc*) ;
 int LOCK_INIT (struct host1x_softc*) ;
 int M_WAITOK ;
 int M_ZERO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int TAILQ_INIT (int *) ;
 int * bus_alloc_resource_any (void*,int ,int*,int ) ;
 int bus_generic_attach (void*) ;
 int bus_release_resource (void*,int ,int ,int *) ;
 struct host1x_softc* device_get_softc (void*) ;
 int device_printf (void*,char*) ;
 int free (TYPE_2__*,int ) ;
 TYPE_2__* malloc (int,int ,int) ;

__attribute__((used)) static int
host1x_attach(device_t dev)
{
 int rv, rid;
 struct host1x_softc *sc;

 sc = device_get_softc(dev);
 sc->tegra_drm = malloc(sizeof(struct tegra_drm), DRM_MEM_DRIVER,
     M_WAITOK | M_ZERO);


 sc->dev = dev;
 sc->tegra_drm->drm_dev.dev_private = &sc->tegra_drm;
 sc->tegra_drm->drm_dev.dev = dev;

 TAILQ_INIT(&sc->clients);

 LOCK_INIT(sc);


 rid = 0;
 sc->mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->mem_res == ((void*)0)) {
  device_printf(dev, "Cannot map registers.\n");
  rv = ENXIO;
  goto fail;
 }

 return (bus_generic_attach(dev));

fail:
 if (sc->tegra_drm != ((void*)0))
  free(sc->tegra_drm, DRM_MEM_DRIVER);
 if (sc->mem_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->mem_res);
 LOCK_DESTROY(sc);
 return (rv);
}
