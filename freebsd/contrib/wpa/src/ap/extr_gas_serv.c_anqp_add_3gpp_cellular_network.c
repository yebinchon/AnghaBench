
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {int anqp_3gpp_cell_net_len; scalar_t__ anqp_3gpp_cell_net; } ;


 int ANQP_3GPP_CELLULAR_NETWORK ;
 scalar_t__ anqp_add_override (struct hostapd_data*,struct wpabuf*,int ) ;
 int wpabuf_put_data (struct wpabuf*,scalar_t__,int ) ;
 int wpabuf_put_le16 (struct wpabuf*,int ) ;

__attribute__((used)) static void anqp_add_3gpp_cellular_network(struct hostapd_data *hapd,
        struct wpabuf *buf)
{
 if (anqp_add_override(hapd, buf, ANQP_3GPP_CELLULAR_NETWORK))
  return;

 if (hapd->conf->anqp_3gpp_cell_net) {
  wpabuf_put_le16(buf, ANQP_3GPP_CELLULAR_NETWORK);
  wpabuf_put_le16(buf,
    hapd->conf->anqp_3gpp_cell_net_len);
  wpabuf_put_data(buf, hapd->conf->anqp_3gpp_cell_net,
    hapd->conf->anqp_3gpp_cell_net_len);
 }
}
