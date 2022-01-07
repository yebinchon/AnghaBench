
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysctl_oid {int dummy; } ;
struct soctherm_softc {int ntsensors; TYPE_1__* tsensors; } ;
struct TYPE_2__ {int name; } ;


 int CTLFLAG_RD ;
 int CTLTYPE_INT ;
 int ENXIO ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (int *,int ,int ,char*,int,int *,char*) ;
 struct sysctl_oid* SYSCTL_ADD_PROC (int *,int ,int ,int ,int,struct soctherm_softc*,int,int ,char*,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int SYSCTL_STATIC_CHILDREN (int ) ;
 int _hw ;
 int soctherm_sysctl_ctx ;
 int soctherm_sysctl_temperature ;
 int sysctl_ctx_init (int *) ;

__attribute__((used)) static int
soctherm_init_sysctl(struct soctherm_softc *sc)
{
 int i;
 struct sysctl_oid *oid, *tmp;

 sysctl_ctx_init(&soctherm_sysctl_ctx);

 oid = SYSCTL_ADD_NODE(&soctherm_sysctl_ctx,
     SYSCTL_STATIC_CHILDREN(_hw), OID_AUTO, "temperature",
     CTLFLAG_RD, ((void*)0), "");
 if (oid == ((void*)0))
  return (ENXIO);


 for (i = sc->ntsensors - 1; i >= 0; i--) {
  tmp = SYSCTL_ADD_PROC(&soctherm_sysctl_ctx,
      SYSCTL_CHILDREN(oid), OID_AUTO, sc->tsensors[i].name,
      CTLTYPE_INT | CTLFLAG_RD, sc, i,
      soctherm_sysctl_temperature, "IK", "SoC Temperature");
  if (tmp == ((void*)0))
   return (ENXIO);
 }

 return (0);
}
