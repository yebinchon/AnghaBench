
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_sm {size_t assoc_wpa_ie_len; int * assoc_wpa_ie; TYPE_1__* ctx; } ;
struct TYPE_2__ {int msg_ctx; } ;


 int MSG_DEBUG ;
 int os_free (int *) ;
 int * os_memdup (int const*,size_t) ;
 int wpa_dbg (int ,int ,char*) ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;

int wpa_sm_set_assoc_wpa_ie(struct wpa_sm *sm, const u8 *ie, size_t len)
{
 if (sm == ((void*)0))
  return -1;

 os_free(sm->assoc_wpa_ie);
 if (ie == ((void*)0) || len == 0) {
  wpa_dbg(sm->ctx->msg_ctx, MSG_DEBUG,
   "WPA: clearing own WPA/RSN IE");
  sm->assoc_wpa_ie = ((void*)0);
  sm->assoc_wpa_ie_len = 0;
 } else {
  wpa_hexdump(MSG_DEBUG, "WPA: set own WPA/RSN IE", ie, len);
  sm->assoc_wpa_ie = os_memdup(ie, len);
  if (sm->assoc_wpa_ie == ((void*)0))
   return -1;

  sm->assoc_wpa_ie_len = len;
 }

 return 0;
}
