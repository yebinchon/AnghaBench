
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 int P2P_ATTR_NOTICE_OF_ABSENCE ;
 int wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_buf (struct wpabuf*,struct wpabuf*) ;
 int wpabuf_put_le16 (struct wpabuf*,int ) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

__attribute__((used)) static void p2p_group_add_noa(struct wpabuf *ie, struct wpabuf *noa)
{
 if (noa == ((void*)0))
  return;

 wpabuf_put_u8(ie, P2P_ATTR_NOTICE_OF_ABSENCE);
 wpabuf_put_le16(ie, wpabuf_len(noa));
 wpabuf_put_buf(ie, noa);
}
