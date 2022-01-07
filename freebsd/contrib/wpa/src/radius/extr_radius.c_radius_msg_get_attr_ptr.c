
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct radius_msg {size_t attr_used; } ;
struct radius_attr_hdr {scalar_t__ type; int length; } ;


 struct radius_attr_hdr* radius_get_attr_hdr (struct radius_msg*,size_t) ;

int radius_msg_get_attr_ptr(struct radius_msg *msg, u8 type, u8 **buf,
       size_t *len, const u8 *start)
{
 size_t i;
 struct radius_attr_hdr *attr = ((void*)0), *tmp;

 for (i = 0; i < msg->attr_used; i++) {
  tmp = radius_get_attr_hdr(msg, i);
  if (tmp->type == type &&
      (start == ((void*)0) || (u8 *) tmp > start)) {
   attr = tmp;
   break;
  }
 }

 if (!attr || attr->length < sizeof(*attr))
  return -1;

 *buf = (u8 *) (attr + 1);
 *len = attr->length - sizeof(*attr);
 return 0;
}
