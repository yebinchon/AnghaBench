
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct p2p_message {int const* device_id; int const* p2p_device_addr; } ;
typedef int msg ;


 int os_memset (struct p2p_message*,int ,int) ;
 scalar_t__ p2p_parse_p2p_ie (struct wpabuf const*,struct p2p_message*) ;

const u8 * p2p_get_go_dev_addr(const struct wpabuf *p2p_ie)
{
 struct p2p_message msg;

 os_memset(&msg, 0, sizeof(msg));
 if (p2p_parse_p2p_ie(p2p_ie, &msg))
  return ((void*)0);

 if (msg.p2p_device_addr)
  return msg.p2p_device_addr;
 if (msg.device_id)
  return msg.device_id;

 return ((void*)0);
}
