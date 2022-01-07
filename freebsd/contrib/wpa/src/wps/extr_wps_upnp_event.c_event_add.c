
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_event_ {int list; scalar_t__ subscriber_sequence; int * data; struct subscription* s; } ;
struct wpabuf {int dummy; } ;
struct subscription {scalar_t__ next_subscriber_sequence; int sm; int event_queue; scalar_t__ last_event_failed; } ;


 unsigned int MAX_EVENTS_QUEUED ;
 int MSG_DEBUG ;
 int dl_list_add_tail (int *,int *) ;
 int dl_list_init (int *) ;
 unsigned int dl_list_len (int *) ;
 int event_delete (struct wps_event_*) ;
 struct wps_event_* event_dequeue (struct subscription*) ;
 int event_send_all_later (int ) ;
 int os_free (struct wps_event_*) ;
 struct wps_event_* os_zalloc (int) ;
 int wpa_printf (int ,char*,...) ;
 int * wpabuf_dup (struct wpabuf const*) ;

int event_add(struct subscription *s, const struct wpabuf *data, int probereq)
{
 struct wps_event_ *e;
 unsigned int len;

 len = dl_list_len(&s->event_queue);
 if (len >= MAX_EVENTS_QUEUED) {
  wpa_printf(MSG_DEBUG, "WPS UPnP: Too many events queued for "
      "subscriber %p", s);
  if (probereq)
   return 1;


  e = event_dequeue(s);
  if (!e)
   return 1;
  event_delete(e);
 }

 if (s->last_event_failed && probereq && len > 0) {




  wpa_printf(MSG_DEBUG, "WPS UPnP: Do not queue more Probe "
      "Request frames for subscription %p since last "
      "delivery failed", s);
  return -1;
 }

 e = os_zalloc(sizeof(*e));
 if (e == ((void*)0))
  return -1;
 dl_list_init(&e->list);
 e->s = s;
 e->data = wpabuf_dup(data);
 if (e->data == ((void*)0)) {
  os_free(e);
  return -1;
 }
 e->subscriber_sequence = s->next_subscriber_sequence++;
 if (s->next_subscriber_sequence == 0)
  s->next_subscriber_sequence++;
 wpa_printf(MSG_DEBUG, "WPS UPnP: Queue event %p for subscriber %p "
     "(queue len %u)", e, s, len + 1);
 dl_list_add_tail(&s->event_queue, &e->list);
 event_send_all_later(s->sm);
 return 0;
}
