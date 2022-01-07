
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ sec; } ;
struct radius_msg_list {size_t shared_secret_len; int attempts; int accu_attempts; int next_wait; struct radius_msg_list* next; scalar_t__ first_try; scalar_t__ next_try; TYPE_1__ last_attempt; int const* shared_secret; int msg_type; struct radius_msg* msg; int addr; } ;
struct radius_msg {int dummy; } ;
struct radius_client_data {scalar_t__ num_msgs; struct radius_msg_list* msgs; } ;
typedef int RadiusType ;


 int ETH_ALEN ;
 int MSG_INFO ;
 int RADIUS_CLIENT_FIRST_WAIT ;
 scalar_t__ RADIUS_CLIENT_MAX_ENTRIES ;
 int RADIUS_CLIENT_MAX_WAIT ;
 scalar_t__ eloop_terminated () ;
 int os_get_reltime (TYPE_1__*) ;
 int os_memcpy (int ,int const*,int ) ;
 struct radius_msg_list* os_zalloc (int) ;
 int radius_client_msg_free (struct radius_msg_list*) ;
 int radius_client_update_timeout (struct radius_client_data*) ;
 int radius_msg_free (struct radius_msg*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void radius_client_list_add(struct radius_client_data *radius,
       struct radius_msg *msg,
       RadiusType msg_type,
       const u8 *shared_secret,
       size_t shared_secret_len, const u8 *addr)
{
 struct radius_msg_list *entry, *prev;

 if (eloop_terminated()) {


  radius_msg_free(msg);
  return;
 }

 entry = os_zalloc(sizeof(*entry));
 if (entry == ((void*)0)) {
  wpa_printf(MSG_INFO, "RADIUS: Failed to add packet into retransmit list");
  radius_msg_free(msg);
  return;
 }

 if (addr)
  os_memcpy(entry->addr, addr, ETH_ALEN);
 entry->msg = msg;
 entry->msg_type = msg_type;
 entry->shared_secret = shared_secret;
 entry->shared_secret_len = shared_secret_len;
 os_get_reltime(&entry->last_attempt);
 entry->first_try = entry->last_attempt.sec;
 entry->next_try = entry->first_try + RADIUS_CLIENT_FIRST_WAIT;
 entry->attempts = 1;
 entry->accu_attempts = 1;
 entry->next_wait = RADIUS_CLIENT_FIRST_WAIT * 2;
 if (entry->next_wait > RADIUS_CLIENT_MAX_WAIT)
  entry->next_wait = RADIUS_CLIENT_MAX_WAIT;
 entry->next = radius->msgs;
 radius->msgs = entry;
 radius_client_update_timeout(radius);

 if (radius->num_msgs >= RADIUS_CLIENT_MAX_ENTRIES) {
  wpa_printf(MSG_INFO, "RADIUS: Removing the oldest un-ACKed packet due to retransmit list limits");
  prev = ((void*)0);
  while (entry->next) {
   prev = entry;
   entry = entry->next;
  }
  if (prev) {
   prev->next = ((void*)0);
   radius_client_msg_free(entry);
  }
 } else
  radius->num_msgs++;
}
