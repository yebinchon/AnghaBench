
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radius_attr_type {char* name; int data_type; } ;
struct radius_attr_hdr {int length; int type; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef int buf ;


 int AF_INET6 ;
 int MSG_INFO ;






 int WPA_GET_BE32 (unsigned char*) ;
 int inet_ntoa (struct in_addr) ;
 char* inet_ntop (int ,struct in6_addr*,char*,int) ;
 int os_memcpy (struct in_addr*,unsigned char*,int) ;
 int printf_encode (char*,int,unsigned char*,int) ;
 struct radius_attr_type* radius_get_attr_type (int ) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_snprintf_hex (char*,int,unsigned char*,int) ;

__attribute__((used)) static void radius_msg_dump_attr(struct radius_attr_hdr *hdr)
{
 const struct radius_attr_type *attr;
 int len;
 unsigned char *pos;
 char buf[1000];

 attr = radius_get_attr_type(hdr->type);

 wpa_printf(MSG_INFO, "   Attribute %d (%s) length=%d",
     hdr->type, attr ? attr->name : "?Unknown?", hdr->length);

 if (attr == ((void*)0) || hdr->length < sizeof(struct radius_attr_hdr))
  return;

 len = hdr->length - sizeof(struct radius_attr_hdr);
 pos = (unsigned char *) (hdr + 1);

 switch (attr->data_type) {
 case 129:
  printf_encode(buf, sizeof(buf), pos, len);
  wpa_printf(MSG_INFO, "      Value: '%s'", buf);
  break;

 case 131:
  if (len == 4) {
   struct in_addr addr;
   os_memcpy(&addr, pos, 4);
   wpa_printf(MSG_INFO, "      Value: %s",
       inet_ntoa(addr));
  } else {
   wpa_printf(MSG_INFO, "      Invalid IP address length %d",
       len);
  }
  break;
 case 133:
 case 128:
  wpa_snprintf_hex(buf, sizeof(buf), pos, len);
  wpa_printf(MSG_INFO, "      Value: %s", buf);
  break;

 case 132:
  if (len == 4)
   wpa_printf(MSG_INFO, "      Value: %u",
       WPA_GET_BE32(pos));
  else
   wpa_printf(MSG_INFO, "      Invalid INT32 length %d",
       len);
  break;

 default:
  break;
 }
}
