
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct radius_msg {size_t attr_used; } ;
struct radius_attr_hdr {scalar_t__ type; int length; } ;


 scalar_t__ RADIUS_ATTR_EAP_MESSAGE ;
 struct radius_attr_hdr* radius_get_attr_hdr (struct radius_msg*,size_t) ;
 struct wpabuf* wpabuf_alloc (size_t) ;
 int wpabuf_put_data (struct wpabuf*,struct radius_attr_hdr*,int) ;

struct wpabuf * radius_msg_get_eap(struct radius_msg *msg)
{
 struct wpabuf *eap;
 size_t len, i;
 struct radius_attr_hdr *attr;

 if (msg == ((void*)0))
  return ((void*)0);

 len = 0;
 for (i = 0; i < msg->attr_used; i++) {
  attr = radius_get_attr_hdr(msg, i);
  if (attr->type == RADIUS_ATTR_EAP_MESSAGE &&
      attr->length > sizeof(struct radius_attr_hdr))
   len += attr->length - sizeof(struct radius_attr_hdr);
 }

 if (len == 0)
  return ((void*)0);

 eap = wpabuf_alloc(len);
 if (eap == ((void*)0))
  return ((void*)0);

 for (i = 0; i < msg->attr_used; i++) {
  attr = radius_get_attr_hdr(msg, i);
  if (attr->type == RADIUS_ATTR_EAP_MESSAGE &&
      attr->length > sizeof(struct radius_attr_hdr)) {
   int flen = attr->length - sizeof(*attr);
   wpabuf_put_data(eap, attr + 1, flen);
  }
 }

 return eap;
}
