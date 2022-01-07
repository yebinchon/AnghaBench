
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct eap_hdr {int identifier; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*,int) ;
 struct eap_hdr* wpabuf_head (struct wpabuf const*) ;
 int wpabuf_len (struct wpabuf const*) ;

__attribute__((used)) static int eap_sm_getId(const struct wpabuf *data)
{
 const struct eap_hdr *hdr;

 if (data == ((void*)0) || wpabuf_len(data) < sizeof(*hdr))
  return -1;

 hdr = wpabuf_head(data);
 wpa_printf(MSG_DEBUG, "EAP: getId: id=%d", hdr->identifier);
 return hdr->identifier;
}
