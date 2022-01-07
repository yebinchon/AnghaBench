
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct p2p_noa_desc {int start_time; int interval; int duration; int count_type; } ;


 int wpabuf_put_le32 (struct wpabuf*,int ) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

__attribute__((used)) static void p2p_buf_add_noa_desc(struct wpabuf *buf, struct p2p_noa_desc *desc)
{
 if (desc == ((void*)0))
  return;

 wpabuf_put_u8(buf, desc->count_type);
 wpabuf_put_le32(buf, desc->duration);
 wpabuf_put_le32(buf, desc->interval);
 wpabuf_put_le32(buf, desc->start_time);
}
