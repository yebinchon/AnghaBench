
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct radius_msg {int * buf; int hdr; } ;
struct radius_hdr {int length; } ;
struct radius_attr_hdr {int length; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 size_t be_to_host16 (int ) ;
 struct radius_msg* os_zalloc (int) ;
 scalar_t__ radius_msg_add_attr_to_array (struct radius_msg*,struct radius_attr_hdr*) ;
 int radius_msg_free (struct radius_msg*) ;
 scalar_t__ radius_msg_initialize (struct radius_msg*) ;
 int wpa_printf (int ,char*,...) ;
 int * wpabuf_alloc_copy (int const*,size_t) ;
 int wpabuf_len (int *) ;
 int wpabuf_mhead (int *) ;
 unsigned char* wpabuf_mhead_u8 (int *) ;

struct radius_msg * radius_msg_parse(const u8 *data, size_t len)
{
 struct radius_msg *msg;
 struct radius_hdr *hdr;
 struct radius_attr_hdr *attr;
 size_t msg_len;
 unsigned char *pos, *end;

 if (data == ((void*)0) || len < sizeof(*hdr))
  return ((void*)0);

 hdr = (struct radius_hdr *) data;

 msg_len = be_to_host16(hdr->length);
 if (msg_len < sizeof(*hdr) || msg_len > len) {
  wpa_printf(MSG_INFO, "RADIUS: Invalid message length");
  return ((void*)0);
 }

 if (msg_len < len) {
  wpa_printf(MSG_DEBUG, "RADIUS: Ignored %lu extra bytes after "
      "RADIUS message", (unsigned long) len - msg_len);
 }

 msg = os_zalloc(sizeof(*msg));
 if (msg == ((void*)0))
  return ((void*)0);

 msg->buf = wpabuf_alloc_copy(data, msg_len);
 if (msg->buf == ((void*)0) || radius_msg_initialize(msg)) {
  radius_msg_free(msg);
  return ((void*)0);
 }
 msg->hdr = wpabuf_mhead(msg->buf);


 pos = wpabuf_mhead_u8(msg->buf) + sizeof(struct radius_hdr);
 end = wpabuf_mhead_u8(msg->buf) + wpabuf_len(msg->buf);
 while (pos < end) {
  if ((size_t) (end - pos) < sizeof(*attr))
   goto fail;

  attr = (struct radius_attr_hdr *) pos;

  if (attr->length > end - pos || attr->length < sizeof(*attr))
   goto fail;



  if (radius_msg_add_attr_to_array(msg, attr))
   goto fail;

  pos += attr->length;
 }

 return msg;

 fail:
 radius_msg_free(msg);
 return ((void*)0);
}
