
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct radius_msg_list {scalar_t__ msg_type; struct radius_msg_list* next; int addr; } ;
struct radius_client_data {int num_msgs; struct radius_msg_list* msgs; int ctx; } ;


 int ETH_ALEN ;
 int HOSTAPD_LEVEL_DEBUG ;
 int HOSTAPD_MODULE_RADIUS ;
 scalar_t__ RADIUS_AUTH ;
 int hostapd_logger (int ,int const*,int ,int ,char*) ;
 scalar_t__ os_memcmp (int ,int const*,int ) ;
 int radius_client_msg_free (struct radius_msg_list*) ;

void radius_client_flush_auth(struct radius_client_data *radius,
         const u8 *addr)
{
 struct radius_msg_list *entry, *prev, *tmp;

 prev = ((void*)0);
 entry = radius->msgs;
 while (entry) {
  if (entry->msg_type == RADIUS_AUTH &&
      os_memcmp(entry->addr, addr, ETH_ALEN) == 0) {
   hostapd_logger(radius->ctx, addr,
           HOSTAPD_MODULE_RADIUS,
           HOSTAPD_LEVEL_DEBUG,
           "Removing pending RADIUS authentication"
           " message for removed client");

   if (prev)
    prev->next = entry->next;
   else
    radius->msgs = entry->next;

   tmp = entry;
   entry = entry->next;
   radius_client_msg_free(tmp);
   radius->num_msgs--;
   continue;
  }

  prev = entry;
  entry = entry->next;
 }
}
