
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char u8 ;
typedef int u16 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {TYPE_1__* global; } ;
struct p2ps_advertisement {char state; scalar_t__ svc_info; scalar_t__ svc_name; int config_methods; int id; struct p2ps_advertisement* next; } ;
struct TYPE_2__ {int p2p; } ;


 int MSG_DEBUG ;
 char P2P_SD_SUCCESS ;
 char P2P_SERV_P2PS ;
 int WPA_PUT_LE16 (char*,int) ;
 scalar_t__ find_p2ps_substr (struct p2ps_advertisement*,char const*,size_t) ;
 scalar_t__ os_memcmp (scalar_t__,char const*,size_t) ;
 size_t os_strlen (scalar_t__) ;
 struct p2ps_advertisement* p2p_get_p2ps_adv_list (int ) ;
 int wpa_hexdump (int ,char*,char const*,size_t) ;
 int wpa_printf (int ,char*,...) ;
 char* wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_be16 (struct wpabuf*,int ) ;
 int wpabuf_put_data (struct wpabuf*,scalar_t__,size_t) ;
 int wpabuf_put_le16 (struct wpabuf*,int ) ;
 int wpabuf_put_le32 (struct wpabuf*,int ) ;
 int wpabuf_put_u8 (struct wpabuf*,char) ;
 size_t wpabuf_tailroom (struct wpabuf*) ;
 int wpas_sd_add_bad_request (struct wpabuf*,char,char) ;
 int wpas_sd_add_not_found (struct wpabuf*,char,char) ;
 int wpas_sd_add_proto_not_avail (struct wpabuf*,char,char) ;

__attribute__((used)) static void wpas_sd_req_asp(struct wpa_supplicant *wpa_s,
       struct wpabuf *resp, u8 srv_trans_id,
       const u8 *query, size_t query_len)
{
 struct p2ps_advertisement *adv_data;
 const u8 *svc = &query[1];
 const u8 *info = ((void*)0);
 size_t svc_len = query[0];
 size_t info_len = 0;
 int prefix = 0;
 u8 *count_pos = ((void*)0);
 u8 *len_pos = ((void*)0);

 wpa_hexdump(MSG_DEBUG, "P2P: SD Request for ASP", query, query_len);

 if (!wpa_s->global->p2p) {
  wpa_printf(MSG_DEBUG, "P2P: ASP protocol not available");
  wpas_sd_add_proto_not_avail(resp, P2P_SERV_P2PS, srv_trans_id);
  return;
 }


 if (svc_len + 1 < query_len) {
  info = &svc[svc_len];
  info_len = *info++;
 }


 if (svc_len + (info_len ? info_len + 2 : 1) > query_len) {
  wpa_printf(MSG_DEBUG, "P2P: ASP bad request");
  wpas_sd_add_bad_request(resp, P2P_SERV_P2PS, srv_trans_id);
  return;
 }


 if (svc_len && svc[svc_len - 1] == '*') {
  prefix = 1;
  svc_len--;
 }

 for (adv_data = p2p_get_p2ps_adv_list(wpa_s->global->p2p);
      adv_data; adv_data = adv_data->next) {

  if (!prefix && svc_len != os_strlen(adv_data->svc_name))
   continue;


  if (os_memcmp(adv_data->svc_name, svc, svc_len) == 0 &&
      find_p2ps_substr(adv_data, info, info_len)) {
   size_t len = os_strlen(adv_data->svc_name);
   size_t svc_info_len = 0;

   if (adv_data->svc_info)
    svc_info_len = os_strlen(adv_data->svc_info);

   if (len > 0xff || svc_info_len > 0xffff)
    return;


   if (!len_pos && !count_pos) {
    if (wpabuf_tailroom(resp) <
        len + svc_info_len + 16)
     return;

    len_pos = wpabuf_put(resp, 2);
    wpabuf_put_u8(resp, P2P_SERV_P2PS);
    wpabuf_put_u8(resp, srv_trans_id);

    wpabuf_put_u8(resp, P2P_SD_SUCCESS);
    count_pos = wpabuf_put(resp, 1);
    *count_pos = 0;
   } else if (wpabuf_tailroom(resp) <
       len + svc_info_len + 10)
    return;

   if (svc_info_len) {
    wpa_printf(MSG_DEBUG,
        "P2P: Add Svc: %s info: %s",
        adv_data->svc_name,
        adv_data->svc_info);
   } else {
    wpa_printf(MSG_DEBUG, "P2P: Add Svc: %s",
        adv_data->svc_name);
   }


   wpabuf_put_le32(resp, adv_data->id);


   wpabuf_put_be16(resp, adv_data->config_methods);


   wpabuf_put_u8(resp, (u8) len);
   wpabuf_put_data(resp, adv_data->svc_name, len);


   wpabuf_put_u8(resp, adv_data->state);


   wpabuf_put_le16(resp, (u16) svc_info_len);
   wpabuf_put_data(resp, adv_data->svc_info, svc_info_len);


   (*count_pos)++;
   WPA_PUT_LE16(len_pos,
         (u8 *) wpabuf_put(resp, 0) - len_pos - 2);
  }
 }


 if (count_pos == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "P2P: ASP service not found");
  wpas_sd_add_not_found(resp, P2P_SERV_P2PS, srv_trans_id);
 }
}
