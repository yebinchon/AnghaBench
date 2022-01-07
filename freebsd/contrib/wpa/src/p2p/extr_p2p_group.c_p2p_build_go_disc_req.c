
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 int P2P_GO_DISC_REQ ;
 int p2p_buf_add_action_hdr (struct wpabuf*,int ,int ) ;
 struct wpabuf* wpabuf_alloc (int) ;

__attribute__((used)) static struct wpabuf * p2p_build_go_disc_req(void)
{
 struct wpabuf *buf;

 buf = wpabuf_alloc(100);
 if (buf == ((void*)0))
  return ((void*)0);

 p2p_buf_add_action_hdr(buf, P2P_GO_DISC_REQ, 0);

 return buf;
}
