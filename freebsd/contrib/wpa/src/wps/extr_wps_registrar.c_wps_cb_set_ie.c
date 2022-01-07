
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_registrar {int (* set_ie_cb ) (int ,struct wpabuf*,struct wpabuf*) ;int cb_ctx; } ;
struct wpabuf {int dummy; } ;


 int stub1 (int ,struct wpabuf*,struct wpabuf*) ;

__attribute__((used)) static int wps_cb_set_ie(struct wps_registrar *reg, struct wpabuf *beacon_ie,
    struct wpabuf *probe_resp_ie)
{
 return reg->set_ie_cb(reg->cb_ctx, beacon_ie, probe_resp_ie);
}
