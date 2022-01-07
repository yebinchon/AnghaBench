
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_data {int dummy; } ;
struct wpabuf {int dummy; } ;


 int ATTR_CRED ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_clear_free (struct wpabuf*) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_be16 (struct wpabuf*,int ) ;
 int wpabuf_put_buf (struct wpabuf*,struct wpabuf*) ;
 scalar_t__ wps_build_ap_settings (struct wps_data*,struct wpabuf*) ;

__attribute__((used)) static struct wpabuf * wps_build_ap_cred(struct wps_data *wps)
{
 struct wpabuf *msg, *plain;

 msg = wpabuf_alloc(1000);
 if (msg == ((void*)0))
  return ((void*)0);

 plain = wpabuf_alloc(200);
 if (plain == ((void*)0)) {
  wpabuf_free(msg);
  return ((void*)0);
 }

 if (wps_build_ap_settings(wps, plain)) {
  wpabuf_clear_free(plain);
  wpabuf_free(msg);
  return ((void*)0);
 }

 wpabuf_put_be16(msg, ATTR_CRED);
 wpabuf_put_be16(msg, wpabuf_len(plain));
 wpabuf_put_buf(msg, plain);
 wpabuf_clear_free(plain);

 return msg;
}
