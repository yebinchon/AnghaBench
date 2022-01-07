
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radius_msg {scalar_t__* attr_pos; int buf; } ;
struct radius_attr_hdr {int dummy; } ;


 scalar_t__ wpabuf_mhead_u8 (int ) ;

__attribute__((used)) static struct radius_attr_hdr *
radius_get_attr_hdr(struct radius_msg *msg, int idx)
{
 return (struct radius_attr_hdr *)
  (wpabuf_mhead_u8(msg->buf) + msg->attr_pos[idx]);
}
