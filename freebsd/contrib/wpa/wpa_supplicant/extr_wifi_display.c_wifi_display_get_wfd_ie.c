
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct wpa_global {scalar_t__* wfd_subelem; int * p2p; } ;


 int MAX_WFD_SUBELEMS ;
 struct wpabuf* wpabuf_alloc (size_t) ;
 scalar_t__ wpabuf_len (scalar_t__) ;
 int wpabuf_put_buf (struct wpabuf*,scalar_t__) ;

struct wpabuf * wifi_display_get_wfd_ie(struct wpa_global *global)
{
 struct wpabuf *ie;
 size_t len;
 int i;

 if (global->p2p == ((void*)0))
  return ((void*)0);

 len = 0;
 for (i = 0; i < MAX_WFD_SUBELEMS; i++) {
  if (global->wfd_subelem[i])
   len += wpabuf_len(global->wfd_subelem[i]);
 }

 ie = wpabuf_alloc(len);
 if (ie == ((void*)0))
  return ((void*)0);

 for (i = 0; i < MAX_WFD_SUBELEMS; i++) {
  if (global->wfd_subelem[i])
   wpabuf_put_buf(ie, global->wfd_subelem[i]);
 }

 return ie;
}
