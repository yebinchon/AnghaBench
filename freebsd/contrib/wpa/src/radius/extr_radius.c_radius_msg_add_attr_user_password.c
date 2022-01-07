
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct radius_msg {int dummy; } ;
struct radius_attr_hdr {int dummy; } ;
typedef int buf ;


 int RADIUS_ATTR_USER_PASSWORD ;
 struct radius_attr_hdr* radius_msg_add_attr (struct radius_msg*,int ,int *,int) ;
 int radius_user_password_hide (struct radius_msg*,int const*,size_t,int const*,size_t,int *,int) ;

struct radius_attr_hdr *
radius_msg_add_attr_user_password(struct radius_msg *msg,
      const u8 *data, size_t data_len,
      const u8 *secret, size_t secret_len)
{
 u8 buf[128];
 int res;

 res = radius_user_password_hide(msg, data, data_len,
     secret, secret_len, buf, sizeof(buf));
 if (res < 0)
  return ((void*)0);

 return radius_msg_add_attr(msg, RADIUS_ATTR_USER_PASSWORD,
       buf, res);
}
