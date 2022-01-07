
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;





 int WPA_PUT_LE16 (int*,int) ;
 int* wpabuf_head_u8 (struct wpabuf*) ;
 size_t wpabuf_len (struct wpabuf*) ;
 int* wpabuf_mhead_u8 (struct wpabuf*) ;
 scalar_t__ wpabuf_put (struct wpabuf*,int ) ;

void gas_anqp_set_len(struct wpabuf *buf)
{
 u8 action;
 size_t offset;
 u8 *len;

 if (buf == ((void*)0) || wpabuf_len(buf) < 2)
  return;

 action = *(wpabuf_head_u8(buf) + 1);
 switch (action) {
 case 129:
  offset = 3 + 4;
  break;
 case 128:
  offset = 7 + 4;
  break;
 case 130:
  offset = 8 + 4;
  break;
 default:
  return;
 }

 if (wpabuf_len(buf) < offset + 2)
  return;

 len = wpabuf_mhead_u8(buf) + offset;
 WPA_PUT_LE16(len, (u8 *) wpabuf_put(buf, 0) - len - 2);
}
