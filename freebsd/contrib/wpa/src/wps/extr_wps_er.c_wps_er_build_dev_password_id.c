
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wpabuf {int dummy; } ;


 int ATTR_DEV_PASSWORD_ID ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;

__attribute__((used)) static int wps_er_build_dev_password_id(struct wpabuf *msg, u16 dev_passwd_id)
{
 wpabuf_put_be16(msg, ATTR_DEV_PASSWORD_ID);
 wpabuf_put_be16(msg, 2);
 wpabuf_put_be16(msg, dev_passwd_id);
 return 0;
}
