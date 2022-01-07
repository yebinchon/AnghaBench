
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_data {int * dh_pubkey_e; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;
 int * wpabuf_alloc_copy (int const*,size_t) ;
 int wpabuf_free (int *) ;

__attribute__((used)) static int wps_process_pubkey(struct wps_data *wps, const u8 *pk,
         size_t pk_len)
{
 if (pk == ((void*)0) || pk_len == 0) {
  wpa_printf(MSG_DEBUG, "WPS: No Public Key received");
  return -1;
 }

 wpabuf_free(wps->dh_pubkey_e);
 wps->dh_pubkey_e = wpabuf_alloc_copy(pk, pk_len);
 if (wps->dh_pubkey_e == ((void*)0))
  return -1;

 return 0;
}
