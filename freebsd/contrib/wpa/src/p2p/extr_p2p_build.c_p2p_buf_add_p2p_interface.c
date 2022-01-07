
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct p2p_data {TYPE_1__* cfg; } ;
struct TYPE_2__ {int dev_addr; } ;


 scalar_t__ ETH_ALEN ;
 int P2P_ATTR_INTERFACE ;
 int wpabuf_put_data (struct wpabuf*,int ,scalar_t__) ;
 int wpabuf_put_le16 (struct wpabuf*,scalar_t__) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

void p2p_buf_add_p2p_interface(struct wpabuf *buf, struct p2p_data *p2p)
{

 wpabuf_put_u8(buf, P2P_ATTR_INTERFACE);
 wpabuf_put_le16(buf, ETH_ALEN + 1 + ETH_ALEN);

 wpabuf_put_data(buf, p2p->cfg->dev_addr, ETH_ALEN);





 wpabuf_put_u8(buf, 1);
 wpabuf_put_data(buf, p2p->cfg->dev_addr, ETH_ALEN);
}
