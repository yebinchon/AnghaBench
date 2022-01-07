
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct radius_msg {int buf; int hdr; } ;
struct radius_attr_hdr {int length; int type; } ;


 int MSG_ERROR ;
 size_t RADIUS_MAX_ATTR_LEN ;
 scalar_t__ TEST_FAIL () ;
 scalar_t__ radius_msg_add_attr_to_array (struct radius_msg*,struct radius_attr_hdr*) ;
 int wpa_printf (int ,char*,unsigned long) ;
 int wpabuf_mhead (int ) ;
 struct radius_attr_hdr* wpabuf_put (int ,int) ;
 int wpabuf_put_data (int ,int const*,size_t) ;
 scalar_t__ wpabuf_resize (int *,size_t) ;
 size_t wpabuf_tailroom (int ) ;

struct radius_attr_hdr *radius_msg_add_attr(struct radius_msg *msg, u8 type,
         const u8 *data, size_t data_len)
{
 size_t buf_needed;
 struct radius_attr_hdr *attr;

 if (TEST_FAIL())
  return ((void*)0);

 if (data_len > RADIUS_MAX_ATTR_LEN) {
  wpa_printf(MSG_ERROR, "radius_msg_add_attr: too long attribute (%lu bytes)",
         (unsigned long) data_len);
  return ((void*)0);
 }

 buf_needed = sizeof(*attr) + data_len;

 if (wpabuf_tailroom(msg->buf) < buf_needed) {

  if (wpabuf_resize(&msg->buf, buf_needed) < 0)
   return ((void*)0);
  msg->hdr = wpabuf_mhead(msg->buf);
 }

 attr = wpabuf_put(msg->buf, sizeof(struct radius_attr_hdr));
 attr->type = type;
 attr->length = sizeof(*attr) + data_len;
 wpabuf_put_data(msg->buf, data, data_len);

 if (radius_msg_add_attr_to_array(msg, attr))
  return ((void*)0);

 return attr;
}
