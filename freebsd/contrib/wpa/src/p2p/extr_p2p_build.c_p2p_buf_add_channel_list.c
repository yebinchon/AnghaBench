
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct p2p_reg_class {int reg_class; int channels; char const* channel; } ;
struct p2p_channels {size_t reg_classes; struct p2p_reg_class* reg_class; } ;


 int MSG_DEBUG ;
 int P2P_ATTR_CHANNEL_LIST ;
 int WPA_PUT_LE16 (int *,int) ;
 int wpa_hexdump (int ,char*,int *,int) ;
 int * wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_data (struct wpabuf*,char const*,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

void p2p_buf_add_channel_list(struct wpabuf *buf, const char *country,
         struct p2p_channels *chan)
{
 u8 *len;
 size_t i;


 wpabuf_put_u8(buf, P2P_ATTR_CHANNEL_LIST);
 len = wpabuf_put(buf, 2);
 wpabuf_put_data(buf, country, 3);

 for (i = 0; i < chan->reg_classes; i++) {
  struct p2p_reg_class *c = &chan->reg_class[i];
  wpabuf_put_u8(buf, c->reg_class);
  wpabuf_put_u8(buf, c->channels);
  wpabuf_put_data(buf, c->channel, c->channels);
 }


 WPA_PUT_LE16(len, (u8 *) wpabuf_put(buf, 0) - len - 2);
 wpa_hexdump(MSG_DEBUG, "P2P: * Channel List",
      len + 2, (u8 *) wpabuf_put(buf, 0) - len - 2);
}
