
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_ctx_list {int dummy; } ;
struct mvts_softc {int sc_res; int sc_dev; } ;
typedef int device_t ;


 int CTLFLAG_RD ;
 int CTLTYPE_INT ;
 int ENXIO ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,int ,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int bus_alloc_resources (int ,int ,int ) ;
 struct mvts_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*) ;
 int mvts_res ;
 int ts_sysctl_handler ;

__attribute__((used)) static int
ts_attach(device_t dev)
{
 struct mvts_softc *sc;
 struct sysctl_ctx_list *ctx;
 int error;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 error = bus_alloc_resources(dev, mvts_res, sc->sc_res);
 if (error) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }
 ctx = device_get_sysctl_ctx(dev);
 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
     OID_AUTO, "temperature", CTLTYPE_INT | CTLFLAG_RD, dev,
     0, ts_sysctl_handler, "IK", "Current Temperature");

 return (0);
}
