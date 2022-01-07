
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct p2p_group_member {int * client_info; } ;


 scalar_t__ wpabuf_len (int *) ;
 int wpabuf_put_buf (struct wpabuf*,int *) ;
 scalar_t__ wpabuf_tailroom (struct wpabuf*) ;

__attribute__((used)) static void p2p_client_info(struct wpabuf *ie, struct p2p_group_member *m)
{
 if (m->client_info == ((void*)0))
  return;
 if (wpabuf_tailroom(ie) < wpabuf_len(m->client_info) + 1)
  return;
 wpabuf_put_buf(ie, m->client_info);
}
