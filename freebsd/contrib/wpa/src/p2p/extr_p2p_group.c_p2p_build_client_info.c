
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wpabuf {int dummy; } ;
struct p2p_message {int p2p_device_info_len; scalar_t__* capability; scalar_t__* p2p_device_info; int p2p_device_addr; } ;
typedef int msg ;


 int ETH_ALEN ;
 int os_memcpy (scalar_t__*,int ,int) ;
 int os_memset (struct p2p_message*,int ,int) ;
 scalar_t__ p2p_parse_p2p_ie (struct wpabuf*,struct p2p_message*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 scalar_t__ wpabuf_len (struct wpabuf*) ;
 scalar_t__* wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_data (struct wpabuf*,scalar_t__ const*,int) ;
 int wpabuf_put_u8 (struct wpabuf*,scalar_t__) ;

__attribute__((used)) static struct wpabuf * p2p_build_client_info(const u8 *addr,
          struct wpabuf *p2p_ie,
          u8 *dev_capab, u8 *dev_addr)
{
 const u8 *spos;
 struct p2p_message msg;
 u8 *len_pos;
 struct wpabuf *buf;

 if (p2p_ie == ((void*)0))
  return ((void*)0);

 os_memset(&msg, 0, sizeof(msg));
 if (p2p_parse_p2p_ie(p2p_ie, &msg) ||
     msg.capability == ((void*)0) || msg.p2p_device_info == ((void*)0))
  return ((void*)0);

 buf = wpabuf_alloc(ETH_ALEN + 1 + 1 + msg.p2p_device_info_len);
 if (buf == ((void*)0))
  return ((void*)0);

 *dev_capab = msg.capability[0];
 os_memcpy(dev_addr, msg.p2p_device_addr, ETH_ALEN);

 spos = msg.p2p_device_info;



 len_pos = wpabuf_put(buf, 1);

 wpabuf_put_data(buf, spos, ETH_ALEN);

 wpabuf_put_data(buf, addr, ETH_ALEN);

 wpabuf_put_u8(buf, msg.capability[0]);





 wpabuf_put_data(buf, spos + ETH_ALEN,
   msg.p2p_device_info_len - ETH_ALEN);

 *len_pos = wpabuf_len(buf) - 1;


 return buf;
}
