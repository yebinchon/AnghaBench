
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radius_msg {size_t attr_used; TYPE_1__* hdr; } ;
struct radius_attr_hdr {int dummy; } ;
struct TYPE_2__ {int length; int identifier; int code; } ;


 int MSG_INFO ;
 int be_to_host16 (int ) ;
 int radius_code_string (int ) ;
 struct radius_attr_hdr* radius_get_attr_hdr (struct radius_msg*,size_t) ;
 int radius_msg_dump_attr (struct radius_attr_hdr*) ;
 int wpa_printf (int ,char*,int ,int ,int ,int ) ;

void radius_msg_dump(struct radius_msg *msg)
{
 size_t i;

 wpa_printf(MSG_INFO, "RADIUS message: code=%d (%s) identifier=%d length=%d",
     msg->hdr->code, radius_code_string(msg->hdr->code),
     msg->hdr->identifier, be_to_host16(msg->hdr->length));

 for (i = 0; i < msg->attr_used; i++) {
  struct radius_attr_hdr *attr = radius_get_attr_hdr(msg, i);
  radius_msg_dump_attr(attr);
 }
}
