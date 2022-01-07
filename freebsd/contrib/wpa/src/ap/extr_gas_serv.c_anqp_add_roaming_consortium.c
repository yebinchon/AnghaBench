
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct hostapd_roaming_consortium {int len; int oi; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {unsigned int roaming_consortium_count; struct hostapd_roaming_consortium* roaming_consortium; } ;


 int ANQP_ROAMING_CONSORTIUM ;
 scalar_t__ anqp_add_override (struct hostapd_data*,struct wpabuf*,int ) ;
 int * gas_anqp_add_element (struct wpabuf*,int ) ;
 int gas_anqp_set_element_len (struct wpabuf*,int *) ;
 int wpabuf_put_data (struct wpabuf*,int ,int ) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

__attribute__((used)) static void anqp_add_roaming_consortium(struct hostapd_data *hapd,
     struct wpabuf *buf)
{
 unsigned int i;
 u8 *len;

 if (anqp_add_override(hapd, buf, ANQP_ROAMING_CONSORTIUM))
  return;

 len = gas_anqp_add_element(buf, ANQP_ROAMING_CONSORTIUM);
 for (i = 0; i < hapd->conf->roaming_consortium_count; i++) {
  struct hostapd_roaming_consortium *rc;
  rc = &hapd->conf->roaming_consortium[i];
  wpabuf_put_u8(buf, rc->len);
  wpabuf_put_data(buf, rc->oi, rc->len);
 }
 gas_anqp_set_element_len(buf, len);
}
