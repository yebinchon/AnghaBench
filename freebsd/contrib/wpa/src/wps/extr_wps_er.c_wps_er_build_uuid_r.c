
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 int ATTR_UUID_R ;
 int WPS_UUID_LEN ;
 int wpabuf_put_be16 (struct wpabuf*,int ) ;
 int wpabuf_put_data (struct wpabuf*,int const*,int ) ;

__attribute__((used)) static int wps_er_build_uuid_r(struct wpabuf *msg, const u8 *uuid_r)
{
 wpabuf_put_be16(msg, ATTR_UUID_R);
 wpabuf_put_be16(msg, WPS_UUID_LEN);
 wpabuf_put_data(msg, uuid_r, WPS_UUID_LEN);
 return 0;
}
