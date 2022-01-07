
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct radius_msg {int dummy; } ;
struct radius_attr_hdr {int dummy; } ;


 int RADIUS_ATTR_VENDOR_SPECIFIC ;
 int RADIUS_VENDOR_ID_WFA ;
 int WPA_PUT_BE32 (int *,int ) ;
 int os_free (int *) ;
 int * os_malloc (size_t) ;
 int os_memcpy (int *,int const*,size_t) ;
 struct radius_attr_hdr* radius_msg_add_attr (struct radius_msg*,int ,int *,size_t) ;

int radius_msg_add_wfa(struct radius_msg *msg, u8 subtype, const u8 *data,
         size_t len)
{
 struct radius_attr_hdr *attr;
 u8 *buf, *pos;
 size_t alen;

 alen = 4 + 2 + len;
 buf = os_malloc(alen);
 if (buf == ((void*)0))
  return 0;
 pos = buf;
 WPA_PUT_BE32(pos, RADIUS_VENDOR_ID_WFA);
 pos += 4;
 *pos++ = subtype;
 *pos++ = 2 + len;
 os_memcpy(pos, data, len);
 attr = radius_msg_add_attr(msg, RADIUS_ATTR_VENDOR_SPECIFIC,
       buf, alen);
 os_free(buf);
 if (attr == ((void*)0))
  return 0;

 return 1;
}
