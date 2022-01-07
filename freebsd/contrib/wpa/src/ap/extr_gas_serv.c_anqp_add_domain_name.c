
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {int domain_name_len; scalar_t__ domain_name; } ;


 int ANQP_DOMAIN_NAME ;
 scalar_t__ anqp_add_override (struct hostapd_data*,struct wpabuf*,int ) ;
 int wpabuf_put_data (struct wpabuf*,scalar_t__,int ) ;
 int wpabuf_put_le16 (struct wpabuf*,int ) ;

__attribute__((used)) static void anqp_add_domain_name(struct hostapd_data *hapd, struct wpabuf *buf)
{
 if (anqp_add_override(hapd, buf, ANQP_DOMAIN_NAME))
  return;

 if (hapd->conf->domain_name) {
  wpabuf_put_le16(buf, ANQP_DOMAIN_NAME);
  wpabuf_put_le16(buf, hapd->conf->domain_name_len);
  wpabuf_put_data(buf, hapd->conf->domain_name,
    hapd->conf->domain_name_len);
 }
}
