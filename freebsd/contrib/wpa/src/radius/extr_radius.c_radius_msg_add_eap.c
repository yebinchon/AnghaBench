
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct radius_msg {int dummy; } ;


 int RADIUS_ATTR_EAP_MESSAGE ;
 size_t RADIUS_MAX_ATTR_LEN ;
 int radius_msg_add_attr (struct radius_msg*,int ,int const*,int) ;

int radius_msg_add_eap(struct radius_msg *msg, const u8 *data, size_t data_len)
{
 const u8 *pos = data;
 size_t left = data_len;

 while (left > 0) {
  int len;
  if (left > RADIUS_MAX_ATTR_LEN)
   len = RADIUS_MAX_ATTR_LEN;
  else
   len = left;

  if (!radius_msg_add_attr(msg, RADIUS_ATTR_EAP_MESSAGE,
      pos, len))
   return 0;

  pos += len;
  left -= len;
 }

 return 1;
}
