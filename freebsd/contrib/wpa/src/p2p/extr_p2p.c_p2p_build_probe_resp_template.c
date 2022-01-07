
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct p2p_data {int dummy; } ;


 int MSG_ERROR ;
 int p2p_build_probe_resp_buf (struct p2p_data*,struct wpabuf*,struct wpabuf*,int*,unsigned int) ;
 struct wpabuf* p2p_build_probe_resp_ies (struct p2p_data*,int *,int ) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (scalar_t__) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wpabuf_len (struct wpabuf*) ;

struct wpabuf * p2p_build_probe_resp_template(struct p2p_data *p2p,
           unsigned int freq)
{
 struct wpabuf *ies, *buf;
 u8 addr[] = { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF };
 int ret;

 ies = p2p_build_probe_resp_ies(p2p, ((void*)0), 0);
 if (!ies) {
  wpa_printf(MSG_ERROR,
      "CTRL: Failed to build Probe Response IEs");
  return ((void*)0);
 }

 buf = wpabuf_alloc(200 + wpabuf_len(ies));
 if (!buf) {
  wpabuf_free(ies);
  return ((void*)0);
 }

 ret = p2p_build_probe_resp_buf(p2p, buf, ies, addr, freq);
 wpabuf_free(ies);
 if (ret) {
  wpabuf_free(buf);
  return ((void*)0);
 }

 return buf;
}
