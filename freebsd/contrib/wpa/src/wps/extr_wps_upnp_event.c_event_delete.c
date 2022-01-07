
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_event_ {int data; } ;


 int MSG_DEBUG ;
 int event_clean (struct wps_event_*) ;
 int os_free (struct wps_event_*) ;
 int wpa_printf (int ,char*,struct wps_event_*) ;
 int wpabuf_free (int ) ;

__attribute__((used)) static void event_delete(struct wps_event_ *e)
{
 wpa_printf(MSG_DEBUG, "WPS UPnP: Delete event %p", e);
 event_clean(e);
 wpabuf_free(e->data);
 os_free(e);
}
