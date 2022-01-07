
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dpaa_portals_softc {int * sc_rres; TYPE_1__* sc_dp; } ;
typedef int device_t ;
struct TYPE_4__ {scalar_t__** portal_ce_pa; void** portal_ci_va; void** portal_ce_va; int ** portal_intr; int ** portal_ci_size; int ** portal_ce_size; int ** portal_ci_pa; } ;
struct TYPE_3__ {scalar_t__ dp_ce_pa; int dp_intr_num; int dp_ci_size; int dp_ce_size; int dp_ci_pa; } ;


 int BM_PORTAL ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int QM_PORTAL ;
 TYPE_2__ XX_PInfo ;
 int device_get_name (int ) ;
 struct dpaa_portals_softc* device_get_softc (int ) ;
 int free (char*,int ) ;
 char* malloc (int,int ,int) ;
 void* rman_get_bushandle (int ) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int strncpy (char*,int ,int) ;

void
XX_PortalSetInfo(device_t dev)
{
 char *dev_name;
 struct dpaa_portals_softc *sc;
 int i, type, len;

 dev_name = malloc(sizeof(*dev_name), M_TEMP, M_WAITOK |
     M_ZERO);

 len = strlen("bman-portals");

 strncpy(dev_name, device_get_name(dev), len);

 if (strncmp(dev_name, "bman-portals", len) && strncmp(dev_name,
     "qman-portals", len))
  goto end;

 if (strncmp(dev_name, "bman-portals", len) == 0)
  type = BM_PORTAL;
 else
  type = QM_PORTAL;

 sc = device_get_softc(dev);

 for (i = 0; sc->sc_dp[i].dp_ce_pa != 0; i++) {
  XX_PInfo.portal_ce_pa[type][i] = sc->sc_dp[i].dp_ce_pa;
  XX_PInfo.portal_ci_pa[type][i] = sc->sc_dp[i].dp_ci_pa;
  XX_PInfo.portal_ce_size[type][i] = sc->sc_dp[i].dp_ce_size;
  XX_PInfo.portal_ci_size[type][i] = sc->sc_dp[i].dp_ci_size;
  XX_PInfo.portal_intr[type][i] = sc->sc_dp[i].dp_intr_num;
 }

 XX_PInfo.portal_ce_va[type] = rman_get_bushandle(sc->sc_rres[0]);
 XX_PInfo.portal_ci_va[type] = rman_get_bushandle(sc->sc_rres[1]);
end:
 free(dev_name, M_TEMP);
}
