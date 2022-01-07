
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {int ipaddr_type_availability; scalar_t__ ipaddr_type_configured; } ;


 int ANQP_IP_ADDR_TYPE_AVAILABILITY ;
 scalar_t__ anqp_add_override (struct hostapd_data*,struct wpabuf*,int) ;
 int wpabuf_put_le16 (struct wpabuf*,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

__attribute__((used)) static void anqp_add_ip_addr_type_availability(struct hostapd_data *hapd,
            struct wpabuf *buf)
{
 if (anqp_add_override(hapd, buf, ANQP_IP_ADDR_TYPE_AVAILABILITY))
  return;

 if (hapd->conf->ipaddr_type_configured) {
  wpabuf_put_le16(buf, ANQP_IP_ADDR_TYPE_AVAILABILITY);
  wpabuf_put_le16(buf, 1);
  wpabuf_put_u8(buf, hapd->conf->ipaddr_type_availability);
 }
}
