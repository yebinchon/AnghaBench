
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radius_msg {struct radius_msg* attr_pos; int buf; } ;


 int os_free (struct radius_msg*) ;
 int wpabuf_free (int ) ;

void radius_msg_free(struct radius_msg *msg)
{
 if (msg == ((void*)0))
  return;

 wpabuf_free(msg->buf);
 os_free(msg->attr_pos);
 os_free(msg);
}
