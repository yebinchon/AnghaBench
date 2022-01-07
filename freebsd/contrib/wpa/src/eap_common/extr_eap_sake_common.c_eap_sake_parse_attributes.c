
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sake_parse_attr {int dummy; } ;


 int MSG_DEBUG ;
 scalar_t__ eap_sake_parse_add_attr (struct eap_sake_parse_attr*,int const,int const,int const*) ;
 int os_memset (struct eap_sake_parse_attr*,int ,int) ;
 int wpa_printf (int ,char*,...) ;

int eap_sake_parse_attributes(const u8 *buf, size_t len,
         struct eap_sake_parse_attr *attr)
{
 const u8 *pos = buf, *end = buf + len;

 os_memset(attr, 0, sizeof(*attr));
 while (pos < end) {
  if (end - pos < 2) {
   wpa_printf(MSG_DEBUG, "EAP-SAKE: Too short attribute");
   return -1;
  }

  if (pos[1] < 2) {
   wpa_printf(MSG_DEBUG, "EAP-SAKE: Invalid attribute "
       "length (%d)", pos[1]);
   return -1;
  }

  if (pos + pos[1] > end) {
   wpa_printf(MSG_DEBUG, "EAP-SAKE: Attribute underflow");
   return -1;
  }

  if (eap_sake_parse_add_attr(attr, pos[0], pos[1] - 2, pos + 2))
   return -1;

  pos += pos[1];
 }

 return 0;
}
