
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct radius_msg {int * buf; int hdr; } ;
struct radius_hdr {int dummy; } ;


 int RADIUS_DEFAULT_MSG_SIZE ;
 struct radius_msg* os_zalloc (int) ;
 int radius_msg_free (struct radius_msg*) ;
 scalar_t__ radius_msg_initialize (struct radius_msg*) ;
 int radius_msg_set_hdr (struct radius_msg*,int ,int ) ;
 int * wpabuf_alloc (int ) ;
 int wpabuf_put (int *,int) ;

struct radius_msg * radius_msg_new(u8 code, u8 identifier)
{
 struct radius_msg *msg;

 msg = os_zalloc(sizeof(*msg));
 if (msg == ((void*)0))
  return ((void*)0);

 msg->buf = wpabuf_alloc(RADIUS_DEFAULT_MSG_SIZE);
 if (msg->buf == ((void*)0) || radius_msg_initialize(msg)) {
  radius_msg_free(msg);
  return ((void*)0);
 }
 msg->hdr = wpabuf_put(msg->buf, sizeof(struct radius_hdr));

 radius_msg_set_hdr(msg, code, identifier);

 return msg;
}
