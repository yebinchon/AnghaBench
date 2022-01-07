
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct hostapd_venue_url {scalar_t__ url_len; int url; scalar_t__ venue_number; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {unsigned int venue_url_count; struct hostapd_venue_url* venue_url; } ;


 int ANQP_VENUE_URL ;
 scalar_t__ anqp_add_override (struct hostapd_data*,struct wpabuf*,int ) ;
 int * gas_anqp_add_element (struct wpabuf*,int ) ;
 int gas_anqp_set_element_len (struct wpabuf*,int *) ;
 int wpabuf_put_data (struct wpabuf*,int ,scalar_t__) ;
 int wpabuf_put_u8 (struct wpabuf*,scalar_t__) ;

__attribute__((used)) static void anqp_add_venue_url(struct hostapd_data *hapd, struct wpabuf *buf)
{
 if (anqp_add_override(hapd, buf, ANQP_VENUE_URL))
  return;

 if (hapd->conf->venue_url) {
  u8 *len;
  unsigned int i;

  len = gas_anqp_add_element(buf, ANQP_VENUE_URL);
  for (i = 0; i < hapd->conf->venue_url_count; i++) {
   struct hostapd_venue_url *url;

   url = &hapd->conf->venue_url[i];
   wpabuf_put_u8(buf, 1 + url->url_len);
   wpabuf_put_u8(buf, url->venue_number);
   wpabuf_put_data(buf, url->url, url->url_len);
  }
  gas_anqp_set_element_len(buf, len);
 }
}
