
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct wpabuf {int dummy; } ;


 size_t FLAG_ID_LENGTH_PRESENT ;
 size_t FLAG_SHORT_RECORD ;
 int MSG_ERROR ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (size_t) ;
 size_t wpabuf_len (struct wpabuf const*) ;
 int wpabuf_put_be32 (struct wpabuf*,size_t) ;
 int wpabuf_put_buf (struct wpabuf*,struct wpabuf const*) ;
 int wpabuf_put_data (struct wpabuf*,void*,size_t) ;
 int wpabuf_put_u8 (struct wpabuf*,size_t) ;

__attribute__((used)) static struct wpabuf * ndef_build_record(u8 flags, const void *type,
      u8 type_length, void *id,
      u8 id_length,
      const struct wpabuf *payload)
{
 struct wpabuf *record;
 size_t total_len;
 int short_record;
 u8 local_flag;
 size_t payload_length = wpabuf_len(payload);

 short_record = payload_length < 256 ? 1 : 0;

 total_len = 2;

 total_len += short_record ? sizeof(u8) : sizeof(u32);
 if (id_length > 0)
  total_len += 1;
 total_len += type_length + id_length + payload_length;
 record = wpabuf_alloc(total_len);
 if (record == ((void*)0)) {
  wpa_printf(MSG_ERROR, "NDEF : Failed to allocate "
      "record for build");
  return ((void*)0);
 }

 local_flag = flags;
 if (id_length > 0)
  local_flag |= FLAG_ID_LENGTH_PRESENT;
 if (short_record)
  local_flag |= FLAG_SHORT_RECORD;
 wpabuf_put_u8(record, local_flag);

 wpabuf_put_u8(record, type_length);

 if (short_record)
  wpabuf_put_u8(record, payload_length);
 else
  wpabuf_put_be32(record, payload_length);

 if (id_length > 0)
  wpabuf_put_u8(record, id_length);
 wpabuf_put_data(record, type, type_length);
 wpabuf_put_data(record, id, id_length);
 wpabuf_put_buf(record, payload);
 return record;
}
