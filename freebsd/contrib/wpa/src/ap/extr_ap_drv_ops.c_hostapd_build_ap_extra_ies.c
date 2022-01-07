
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct hostapd_data {TYPE_2__* conf; scalar_t__ p2p_group; struct wpabuf* p2p_probe_resp_ie; struct wpabuf* p2p_beacon_ie; struct wpabuf* wps_probe_resp_ie; struct wpabuf* wps_beacon_ie; TYPE_1__* iface; } ;
typedef int buf ;
struct TYPE_4__ {int p2p; struct wpabuf* assocresp_elements; struct wpabuf* vendor_elements; scalar_t__ mbo_enabled; scalar_t__ wps_state; } ;
struct TYPE_3__ {struct wpabuf* fst_ies; } ;


 scalar_t__ OCE_AP_ENABLED (struct hostapd_data*) ;
 scalar_t__ OCE_STA_CFON_ENABLED (struct hostapd_data*) ;
 int P2P_MANAGE ;
 int P2P_SC_SUCCESS ;
 scalar_t__ add_buf (struct wpabuf**,struct wpabuf*) ;
 scalar_t__ add_buf_data (struct wpabuf**,int *,int) ;
 int * hostapd_eid_adv_proto (struct hostapd_data*,int *) ;
 int * hostapd_eid_ext_capab (struct hostapd_data*,int *) ;
 int * hostapd_eid_fils_indic (struct hostapd_data*,int *,int ) ;
 int * hostapd_eid_hs20_indication (struct hostapd_data*,int *) ;
 int * hostapd_eid_interworking (struct hostapd_data*,int *) ;
 int * hostapd_eid_mbo (struct hostapd_data*,int *,int) ;
 int * hostapd_eid_osen (struct hostapd_data*,int *) ;
 int * hostapd_eid_owe_trans (struct hostapd_data*,int *,int) ;
 int * hostapd_eid_p2p_manage (struct hostapd_data*,int *) ;
 int * hostapd_eid_roaming_consortium (struct hostapd_data*,int *) ;
 int * hostapd_eid_time_adv (struct hostapd_data*,int *) ;
 int * hostapd_eid_time_zone (struct hostapd_data*,int *) ;
 struct wpabuf* p2p_group_assoc_resp_ie (scalar_t__,int ) ;
 int wpabuf_free (struct wpabuf*) ;
 int * wpabuf_put (struct wpabuf*,int) ;
 scalar_t__ wpabuf_resize (struct wpabuf**,int) ;
 struct wpabuf* wps_build_assoc_resp_ie () ;

int hostapd_build_ap_extra_ies(struct hostapd_data *hapd,
          struct wpabuf **beacon_ret,
          struct wpabuf **proberesp_ret,
          struct wpabuf **assocresp_ret)
{
 struct wpabuf *beacon = ((void*)0), *proberesp = ((void*)0), *assocresp = ((void*)0);
 u8 buf[200], *pos;

 *beacon_ret = *proberesp_ret = *assocresp_ret = ((void*)0);

 pos = buf;
 pos = hostapd_eid_time_adv(hapd, pos);
 if (add_buf_data(&beacon, buf, pos - buf) < 0)
  goto fail;
 pos = hostapd_eid_time_zone(hapd, pos);
 if (add_buf_data(&proberesp, buf, pos - buf) < 0)
  goto fail;

 pos = buf;
 pos = hostapd_eid_ext_capab(hapd, pos);
 if (add_buf_data(&assocresp, buf, pos - buf) < 0)
  goto fail;
 pos = hostapd_eid_interworking(hapd, pos);
 pos = hostapd_eid_adv_proto(hapd, pos);
 pos = hostapd_eid_roaming_consortium(hapd, pos);
 if (add_buf_data(&beacon, buf, pos - buf) < 0 ||
     add_buf_data(&proberesp, buf, pos - buf) < 0)
  goto fail;
 if (add_buf(&beacon, hapd->wps_beacon_ie) < 0 ||
     add_buf(&proberesp, hapd->wps_probe_resp_ie) < 0)
  goto fail;
 add_buf(&beacon, hapd->conf->vendor_elements);
 add_buf(&proberesp, hapd->conf->vendor_elements);
 add_buf(&assocresp, hapd->conf->assocresp_elements);

 *beacon_ret = beacon;
 *proberesp_ret = proberesp;
 *assocresp_ret = assocresp;

 return 0;

fail:
 wpabuf_free(beacon);
 wpabuf_free(proberesp);
 wpabuf_free(assocresp);
 return -1;
}
