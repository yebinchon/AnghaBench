
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_context {int dummy; } ;
struct upnp_wps_device_sm {int interfaces; int subscriptions; int msearch_replies; } ;
struct upnp_wps_device_interface {int list; struct upnp_wps_device_interface* ap_pin; void* priv; struct wps_context* wps; struct upnp_wps_device_interface* ctx; int peers; } ;
struct upnp_wps_device_ctx {int list; struct upnp_wps_device_ctx* ap_pin; void* priv; struct wps_context* wps; struct upnp_wps_device_ctx* ctx; int peers; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int dl_list_add (int *,int *) ;
 int dl_list_init (int *) ;
 int os_free (struct upnp_wps_device_interface*) ;
 void* os_zalloc (int) ;
 struct upnp_wps_device_sm* shared_upnp_device ;
 int upnp_wps_device_deinit (struct upnp_wps_device_sm*,void*) ;
 scalar_t__ upnp_wps_device_start (struct upnp_wps_device_sm*,char*) ;
 int wpa_printf (int ,char*,...) ;

struct upnp_wps_device_sm *
upnp_wps_device_init(struct upnp_wps_device_ctx *ctx, struct wps_context *wps,
       void *priv, char *net_if)
{
 struct upnp_wps_device_sm *sm;
 struct upnp_wps_device_interface *iface;
 int start = 0;

 iface = os_zalloc(sizeof(*iface));
 if (iface == ((void*)0)) {
  os_free(ctx->ap_pin);
  os_free(ctx);
  return ((void*)0);
 }
 wpa_printf(MSG_DEBUG, "WPS UPnP: Init interface instance %p", iface);

 dl_list_init(&iface->peers);
 iface->ctx = ctx;
 iface->wps = wps;
 iface->priv = priv;

 if (shared_upnp_device) {
  wpa_printf(MSG_DEBUG, "WPS UPnP: Share existing device "
      "context");
  sm = shared_upnp_device;
 } else {
  wpa_printf(MSG_DEBUG, "WPS UPnP: Initialize device context");
  sm = os_zalloc(sizeof(*sm));
  if (!sm) {
   wpa_printf(MSG_ERROR, "WPS UPnP: upnp_wps_device_init "
       "failed");
   os_free(iface);
   os_free(ctx->ap_pin);
   os_free(ctx);
   return ((void*)0);
  }
  shared_upnp_device = sm;

  dl_list_init(&sm->msearch_replies);
  dl_list_init(&sm->subscriptions);
  dl_list_init(&sm->interfaces);
  start = 1;
 }

 dl_list_add(&sm->interfaces, &iface->list);

 if (start && upnp_wps_device_start(sm, net_if)) {
  upnp_wps_device_deinit(sm, priv);
  return ((void*)0);
 }


 return sm;
}
