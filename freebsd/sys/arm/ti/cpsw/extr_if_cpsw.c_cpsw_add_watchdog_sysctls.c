
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_2__ {int resets; } ;
struct cpsw_softc {TYPE_1__ watchdog; } ;


 int CTLFLAG_RD ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,int ,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;

__attribute__((used)) static void
cpsw_add_watchdog_sysctls(struct sysctl_ctx_list *ctx, struct sysctl_oid *node,
 struct cpsw_softc *sc)
{
 struct sysctl_oid_list *parent;

 parent = SYSCTL_CHILDREN(node);
 SYSCTL_ADD_INT(ctx, parent, OID_AUTO, "resets",
     CTLFLAG_RD, &sc->watchdog.resets, 0,
     "Total number of watchdog resets");
}
