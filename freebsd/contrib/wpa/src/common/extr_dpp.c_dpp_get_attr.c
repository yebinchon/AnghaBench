
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int WPA_GET_LE16 (int const*) ;

const u8 * dpp_get_attr(const u8 *buf, size_t len, u16 req_id, u16 *ret_len)
{
 u16 id, alen;
 const u8 *pos = buf, *end = buf + len;

 while (end - pos >= 4) {
  id = WPA_GET_LE16(pos);
  pos += 2;
  alen = WPA_GET_LE16(pos);
  pos += 2;
  if (alen > end - pos)
   return ((void*)0);
  if (id == req_id) {
   *ret_len = alen;
   return pos;
  }
  pos += alen;
 }

 return ((void*)0);
}
