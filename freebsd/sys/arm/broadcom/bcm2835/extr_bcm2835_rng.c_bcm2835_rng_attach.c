
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct sbuf {int dummy; } ;
struct bcm2835_rng_softc {int sc_rngto; int sc_stall_count; int sc_underrun; int * sc_mem_res; int sc_rbg2x; int sc_dev; } ;
typedef int device_t ;


 int CALLOUT_MPSAFE ;
 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int CTLTYPE_STRING ;
 int ENXIO ;
 int OID_AUTO ;
 int RF_ACTIVE ;
 int RNG_STALL_COUNT_DEFAULT ;
 int SBUF_AUTOEXTEND ;
 int SBUF_INCLUDENUL ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,int ,int ,char*,int,int *,int ,char*) ;
 int SYSCTL_ADD_LONG (struct sysctl_ctx_list*,int ,int ,char*,int,int *,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,struct bcm2835_rng_softc*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int SYS_RES_MEMORY ;
 int TUNABLE_INT_FETCH (char*,int *) ;
 int bcm2835_rng_detach (int ) ;
 int bcm2835_rng_dump_registers (struct bcm2835_rng_softc*,struct sbuf*) ;
 int bcm2835_rng_harvest ;
 int bcm2835_rng_start (struct bcm2835_rng_softc*) ;
 scalar_t__ bootverbose ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 int callout_init (int *,int ) ;
 int callout_reset (int *,int ,int ,struct bcm2835_rng_softc*) ;
 struct bcm2835_rng_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*,int ) ;
 int hz ;
 int sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 int sbuf_new (struct sbuf*,int *,int,int) ;
 int sbuf_trim (struct sbuf*) ;
 int sysctl_bcm2835_rng_2xspeed ;
 int sysctl_bcm2835_rng_dump ;

__attribute__((used)) static int
bcm2835_rng_attach(device_t dev)
{
 struct bcm2835_rng_softc *sc;
 struct sysctl_ctx_list *sysctl_ctx;
 struct sysctl_oid *sysctl_tree;
 int error, rid;

 error = 0;
 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 sc->sc_stall_count = RNG_STALL_COUNT_DEFAULT;


 callout_init(&sc->sc_rngto, CALLOUT_MPSAFE);

 TUNABLE_INT_FETCH("bcmrng.2xspeed", &sc->sc_rbg2x);
 TUNABLE_INT_FETCH("bcmrng.stall_count", &sc->sc_stall_count);


 rid = 0;
 sc->sc_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->sc_mem_res == ((void*)0)) {
  bcm2835_rng_detach(dev);
  return (ENXIO);
 }


 bcm2835_rng_start(sc);


 if (bootverbose) {
  struct sbuf sb;

  (void) sbuf_new(&sb, ((void*)0), 256,
      SBUF_AUTOEXTEND | SBUF_INCLUDENUL);
  bcm2835_rng_dump_registers(sc, &sb);
  sbuf_trim(&sb);
  error = sbuf_finish(&sb);
  if (error == 0)
   device_printf(dev, "%s", sbuf_data(&sb));
  sbuf_delete(&sb);
 }

 sysctl_ctx = device_get_sysctl_ctx(dev);
 sysctl_tree = device_get_sysctl_tree(dev);
 SYSCTL_ADD_LONG(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree), OID_AUTO,
     "underrun", CTLFLAG_RD, &sc->sc_underrun,
     "Number of FIFO underruns");
 SYSCTL_ADD_PROC(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree), OID_AUTO,
     "2xspeed", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
     sysctl_bcm2835_rng_2xspeed, "I", "Enable RBG 2X SPEED");
 SYSCTL_ADD_INT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree), OID_AUTO,
     "stall_count", CTLFLAG_RW, &sc->sc_stall_count,
     RNG_STALL_COUNT_DEFAULT, "Number of underruns to assume RNG stall");
 callout_reset(&sc->sc_rngto, hz, bcm2835_rng_harvest, sc);

 return (0);
}
