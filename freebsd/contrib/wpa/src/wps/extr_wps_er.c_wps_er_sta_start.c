
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct wps_er_sta {TYPE_5__* cred; TYPE_3__* wps; TYPE_5__* addr; TYPE_2__* ap; } ;
struct wps_config {int registrar; TYPE_5__* peer_addr; int wps; } ;
struct wpabuf {int dummy; } ;
typedef int cfg ;
struct TYPE_12__ {struct TYPE_12__* mac_addr; int * cred_attr; } ;
struct TYPE_11__ {int er; TYPE_5__* use_cred; } ;
struct TYPE_10__ {TYPE_5__* ap_settings; TYPE_1__* er; } ;
struct TYPE_9__ {int wps; } ;


 int ETH_ALEN ;
 int WSC_MSG ;
 int os_free (TYPE_5__*) ;
 TYPE_5__* os_malloc (int) ;
 int os_memcpy (TYPE_5__*,TYPE_5__*,int) ;
 int os_memset (struct wps_config*,int ,int) ;
 int wps_deinit (TYPE_3__*) ;
 int wps_er_sta_process (struct wps_er_sta*,struct wpabuf*,int ) ;
 TYPE_3__* wps_init (struct wps_config*) ;

__attribute__((used)) static void wps_er_sta_start(struct wps_er_sta *sta, struct wpabuf *msg)
{
 struct wps_config cfg;

 if (sta->wps)
  wps_deinit(sta->wps);

 os_memset(&cfg, 0, sizeof(cfg));
 cfg.wps = sta->ap->er->wps;
 cfg.registrar = 1;
 cfg.peer_addr = sta->addr;

 sta->wps = wps_init(&cfg);
 if (sta->wps == ((void*)0))
  return;
 sta->wps->er = 1;
 sta->wps->use_cred = sta->ap->ap_settings;
 if (sta->ap->ap_settings) {
  os_free(sta->cred);
  sta->cred = os_malloc(sizeof(*sta->cred));
  if (sta->cred) {
   os_memcpy(sta->cred, sta->ap->ap_settings,
      sizeof(*sta->cred));
   sta->cred->cred_attr = ((void*)0);
   os_memcpy(sta->cred->mac_addr, sta->addr, ETH_ALEN);
   sta->wps->use_cred = sta->cred;
  }
 }

 wps_er_sta_process(sta, msg, WSC_MSG);
}
