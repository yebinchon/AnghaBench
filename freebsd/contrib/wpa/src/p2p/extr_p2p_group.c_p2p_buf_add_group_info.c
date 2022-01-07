
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct p2p_group_member {struct p2p_group_member* next; } ;
struct p2p_group {struct p2p_group_member* members; int p2p; } ;


 int P2P_ATTR_GROUP_INFO ;
 int WPA_PUT_LE16 (int *,int) ;
 int p2p_client_info (struct wpabuf*,struct p2p_group_member*) ;
 int p2p_dbg (int ,char*) ;
 int * wpabuf_put (struct wpabuf*,int ) ;
 int wpabuf_put_le16 (struct wpabuf*,int ) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

void p2p_buf_add_group_info(struct p2p_group *group, struct wpabuf *buf,
       int max_clients)
{
 u8 *group_info;
 int count = 0;
 struct p2p_group_member *m;

 p2p_dbg(group->p2p, "* P2P Group Info");
 group_info = wpabuf_put(buf, 0);
 wpabuf_put_u8(buf, P2P_ATTR_GROUP_INFO);
 wpabuf_put_le16(buf, 0);
 for (m = group->members; m; m = m->next) {
  p2p_client_info(buf, m);
  count++;
  if (max_clients >= 0 && count >= max_clients)
   break;
 }
 WPA_PUT_LE16(group_info + 1,
       (u8 *) wpabuf_put(buf, 0) - group_info - 3);
}
