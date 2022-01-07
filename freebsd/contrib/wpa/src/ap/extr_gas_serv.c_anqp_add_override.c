
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wpabuf {int dummy; } ;
struct hostapd_data {int dummy; } ;


 int anqp_add_elem (struct hostapd_data*,struct wpabuf*,int ) ;
 scalar_t__ get_anqp_elem (struct hostapd_data*,int ) ;

__attribute__((used)) static int anqp_add_override(struct hostapd_data *hapd, struct wpabuf *buf,
        u16 infoid)
{
 if (get_anqp_elem(hapd, infoid)) {
  anqp_add_elem(hapd, buf, infoid);
  return 1;
 }

 return 0;
}
