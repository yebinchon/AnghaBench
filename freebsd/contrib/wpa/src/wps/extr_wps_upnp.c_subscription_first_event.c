
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int txt ;
struct wpabuf {int dummy; } ;
struct subscription {TYPE_1__* sm; } ;
struct TYPE_2__ {char* wlanevent; } ;


 int MSG_DEBUG ;
 scalar_t__ base64_encode (int ,int ,int *) ;
 struct wpabuf* build_fake_wsc_ack () ;
 int event_add (struct subscription*,struct wpabuf*,int ) ;
 int os_snprintf (char*,int,char*,int) ;
 scalar_t__ os_strlen (char*) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (scalar_t__) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_property (struct wpabuf*,char*,char*) ;
 int wpabuf_put_str (struct wpabuf*,char const*) ;

__attribute__((used)) static int subscription_first_event(struct subscription *s)
{
 char *wlan_event;
 struct wpabuf *buf;
 int ap_status = 1;
 const char *head =
  "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
  "<e:propertyset xmlns:e=\"urn:schemas-upnp-org:event-1-0\">\n";
 const char *tail = "</e:propertyset>\n";
 char txt[10];
 int ret;

 if (s->sm->wlanevent == ((void*)0)) {
  struct wpabuf *msg;
  wpa_printf(MSG_DEBUG, "WPS UPnP: Use a fake WSC_ACK as the "
      "initial WLANEvent");
  msg = build_fake_wsc_ack();
  if (msg) {
   s->sm->wlanevent = (char *)
    base64_encode(wpabuf_head(msg),
           wpabuf_len(msg), ((void*)0));
   wpabuf_free(msg);
  }
 }

 wlan_event = s->sm->wlanevent;
 if (wlan_event == ((void*)0) || *wlan_event == '\0') {
  wpa_printf(MSG_DEBUG, "WPS UPnP: WLANEvent not known for "
      "initial event message");
  wlan_event = "";
 }
 buf = wpabuf_alloc(500 + os_strlen(wlan_event));
 if (buf == ((void*)0))
  return -1;

 wpabuf_put_str(buf, head);
 wpabuf_put_property(buf, "STAStatus", "1");
 os_snprintf(txt, sizeof(txt), "%d", ap_status);
 wpabuf_put_property(buf, "APStatus", txt);
 if (*wlan_event)
  wpabuf_put_property(buf, "WLANEvent", wlan_event);
 wpabuf_put_str(buf, tail);

 ret = event_add(s, buf, 0);
 if (ret) {
  wpabuf_free(buf);
  return ret;
 }
 wpabuf_free(buf);

 return 0;
}
