
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_global {int ** wfd_subelem; } ;


 int MAX_WFD_SUBELEMS ;
 int wpabuf_free (int *) ;

void wifi_display_deinit(struct wpa_global *global)
{
 int i;
 for (i = 0; i < MAX_WFD_SUBELEMS; i++) {
  wpabuf_free(global->wfd_subelem[i]);
  global->wfd_subelem[i] = ((void*)0);
 }
}
