
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct radius_msg_list {struct radius_msg_list* next; int addr; int msg; } ;
struct radius_client_data {struct radius_msg_list* msgs; int ctx; int next_radius_identifier; } ;
struct TYPE_2__ {scalar_t__ identifier; } ;


 int HOSTAPD_LEVEL_DEBUG ;
 int HOSTAPD_MODULE_RADIUS ;
 int hostapd_logger (int ,int ,int ,int ,char*,scalar_t__) ;
 int radius_client_msg_free (struct radius_msg_list*) ;
 TYPE_1__* radius_msg_get_hdr (int ) ;

u8 radius_client_get_id(struct radius_client_data *radius)
{
 struct radius_msg_list *entry, *prev, *_remove;
 u8 id = radius->next_radius_identifier++;



 entry = radius->msgs;
 prev = ((void*)0);
 while (entry) {
  if (radius_msg_get_hdr(entry->msg)->identifier == id) {
   hostapd_logger(radius->ctx, entry->addr,
           HOSTAPD_MODULE_RADIUS,
           HOSTAPD_LEVEL_DEBUG,
           "Removing pending RADIUS message, "
           "since its id (%d) is reused", id);
   if (prev)
    prev->next = entry->next;
   else
    radius->msgs = entry->next;
   _remove = entry;
  } else {
   _remove = ((void*)0);
   prev = entry;
  }
  entry = entry->next;

  if (_remove)
   radius_client_msg_free(_remove);
 }

 return id;
}
