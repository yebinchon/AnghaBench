
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int sysctl_name ;
struct sysctl_oid {int dummy; } ;
struct aibs_softc {scalar_t__ sc_ggrp_method; int sc_dev; } ;
struct aibs_sensor {scalar_t__ t; scalar_t__ h; scalar_t__ l; scalar_t__ i; } ;
typedef int intmax_t ;


 scalar_t__ AIBS_SENS_TYPE_TEMP ;
 int CTLFLAG_RD ;
 int CTLTYPE_INT ;
 int SYSCTL_ADD_PROC (int ,int ,int,char*,int,struct aibs_softc*,uintptr_t,int ,char*,char const*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int aibs_sysctl ;
 int aibs_sysctl_ggrp ;
 int device_get_sysctl_ctx (int ) ;
 int device_printf (int ,char*,char const,int,int ,char const*,int ,int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
aibs_sensor_added(struct aibs_softc *sc, struct sysctl_oid *so,
    const char *type_name, int idx, struct aibs_sensor *sensor,
    const char *descr)
{
 char sysctl_name[8];

 snprintf(sysctl_name, sizeof(sysctl_name), "%i", idx);






 SYSCTL_ADD_PROC(device_get_sysctl_ctx(sc->sc_dev),
     SYSCTL_CHILDREN(so), idx, sysctl_name,
     CTLTYPE_INT | CTLFLAG_RD, sc, (uintptr_t)sensor,
     sc->sc_ggrp_method ? aibs_sysctl_ggrp : aibs_sysctl,
     sensor->t == AIBS_SENS_TYPE_TEMP ? "IK" : "I", descr);
}
