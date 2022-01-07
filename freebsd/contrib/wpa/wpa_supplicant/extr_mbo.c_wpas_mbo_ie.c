
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {int enable_oce; TYPE_1__* conf; } ;
struct TYPE_2__ {int mbo_cell_capa; } ;


 int MBO_ATTR_ID_CELL_DATA_CAPA ;
 int MBO_IE_HEADER ;
 int MSG_ERROR ;
 int OCE_ATTR_ID_CAPA_IND ;
 int OCE_RELEASE ;
 int OCE_STA ;
 int mbo_add_ie (int *,size_t,int ,int ) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (size_t) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head_u8 (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;
 int wpas_mbo_non_pref_chan_attrs (struct wpa_supplicant*,struct wpabuf*,int ) ;

int wpas_mbo_ie(struct wpa_supplicant *wpa_s, u8 *buf, size_t len,
  int add_oce_capa)
{
 struct wpabuf *mbo;
 int res;

 if (len < MBO_IE_HEADER + 3 + 7 +
     ((wpa_s->enable_oce & OCE_STA) ? 3 : 0))
  return 0;


 mbo = wpabuf_alloc(len - MBO_IE_HEADER);
 if (!mbo)
  return 0;


 wpas_mbo_non_pref_chan_attrs(wpa_s, mbo, 0);





 wpabuf_put_u8(mbo, MBO_ATTR_ID_CELL_DATA_CAPA);
 wpabuf_put_u8(mbo, 1);
 wpabuf_put_u8(mbo, wpa_s->conf->mbo_cell_capa);


 if ((wpa_s->enable_oce & OCE_STA) && add_oce_capa) {
  wpabuf_put_u8(mbo, OCE_ATTR_ID_CAPA_IND);
  wpabuf_put_u8(mbo, 1);
  wpabuf_put_u8(mbo, OCE_RELEASE);
 }

 res = mbo_add_ie(buf, len, wpabuf_head_u8(mbo), wpabuf_len(mbo));
 if (!res)
  wpa_printf(MSG_ERROR, "Failed to add MBO/OCE IE");

 wpabuf_free(mbo);
 return res;
}
