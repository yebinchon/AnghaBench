
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct p2p_message {int* manageability; } ;
typedef int msg ;


 int P2P_MAN_CROSS_CONNECTION_PERMITTED ;
 int os_memset (struct p2p_message*,int ,int) ;
 scalar_t__ p2p_parse_p2p_ie (struct wpabuf const*,struct p2p_message*) ;

int p2p_get_cross_connect_disallowed(const struct wpabuf *p2p_ie)
{
 struct p2p_message msg;

 os_memset(&msg, 0, sizeof(msg));
 if (p2p_parse_p2p_ie(p2p_ie, &msg))
  return 0;

 if (!msg.manageability)
  return 0;

 return !(msg.manageability[0] & P2P_MAN_CROSS_CONNECTION_PERMITTED);
}
