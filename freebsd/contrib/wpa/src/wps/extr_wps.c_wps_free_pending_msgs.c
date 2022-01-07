
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upnp_pending_message {int msg; struct upnp_pending_message* next; } ;


 int os_free (struct upnp_pending_message*) ;
 int wpabuf_free (int ) ;

void wps_free_pending_msgs(struct upnp_pending_message *msgs)
{
 struct upnp_pending_message *p, *prev;
 p = msgs;
 while (p) {
  prev = p;
  p = p->next;
  wpabuf_free(prev->msg);
  os_free(prev);
 }
}
