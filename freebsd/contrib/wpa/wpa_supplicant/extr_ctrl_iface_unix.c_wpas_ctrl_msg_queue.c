
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct dl_list {int dummy; } ;
struct ctrl_iface_msg {int level; int type; char const* txt; size_t len; int list; struct wpa_supplicant* wpa_s; } ;
typedef enum wpa_msg_type { ____Placeholder_wpa_msg_type } wpa_msg_type ;


 int dl_list_add_tail (struct dl_list*,int *) ;
 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int eloop_register_timeout (int ,int ,int ,struct wpa_supplicant*,int *) ;
 int os_memcpy (struct ctrl_iface_msg*,char const*,size_t) ;
 struct ctrl_iface_msg* os_zalloc (int) ;
 int wpas_ctrl_msg_queue_timeout ;

__attribute__((used)) static void wpas_ctrl_msg_queue(struct dl_list *queue,
    struct wpa_supplicant *wpa_s, int level,
    enum wpa_msg_type type,
    const char *txt, size_t len)
{
 struct ctrl_iface_msg *msg;

 msg = os_zalloc(sizeof(*msg) + len);
 if (!msg)
  return;

 msg->wpa_s = wpa_s;
 msg->level = level;
 msg->type = type;
 os_memcpy(msg + 1, txt, len);
 msg->txt = (const char *) (msg + 1);
 msg->len = len;
 dl_list_add_tail(queue, &msg->list);
 eloop_cancel_timeout(wpas_ctrl_msg_queue_timeout, wpa_s, ((void*)0));
 eloop_register_timeout(0, 0, wpas_ctrl_msg_queue_timeout, wpa_s, ((void*)0));
}
