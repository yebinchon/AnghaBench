
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radius_msg_list {scalar_t__ next_try; scalar_t__ msg_type; scalar_t__ attempts; struct radius_msg_list* next; } ;
struct radius_client_data {int auth_sock; int acct_sock; size_t num_msgs; int ctx; struct radius_msg_list* msgs; } ;
struct os_reltime {scalar_t__ sec; } ;
typedef scalar_t__ os_time_t ;


 int HOSTAPD_LEVEL_DEBUG ;
 int HOSTAPD_MODULE_RADIUS ;
 int MSG_DEBUG ;
 scalar_t__ RADIUS_ACCT ;
 scalar_t__ RADIUS_ACCT_INTERIM ;
 scalar_t__ RADIUS_AUTH ;
 scalar_t__ RADIUS_CLIENT_NUM_FAILOVER ;
 int eloop_cancel_timeout (void (*) (void*,void*),struct radius_client_data*,int *) ;
 int eloop_register_timeout (scalar_t__,int ,void (*) (void*,void*),struct radius_client_data*,int *) ;
 int hostapd_logger (int ,int *,int ,int ,char*,long) ;
 int os_get_reltime (struct os_reltime*) ;
 int radius_client_acct_failover (struct radius_client_data*) ;
 int radius_client_auth_failover (struct radius_client_data*) ;
 int radius_client_msg_free (struct radius_msg_list*) ;
 scalar_t__ radius_client_retransmit (struct radius_client_data*,struct radius_msg_list*,scalar_t__) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void radius_client_timer(void *eloop_ctx, void *timeout_ctx)
{
 struct radius_client_data *radius = eloop_ctx;
 struct os_reltime now;
 os_time_t first;
 struct radius_msg_list *entry, *prev, *tmp;
 int auth_failover = 0, acct_failover = 0;
 size_t prev_num_msgs;
 int s;

 entry = radius->msgs;
 if (!entry)
  return;

 os_get_reltime(&now);

 while (entry) {
  if (now.sec >= entry->next_try) {
   s = entry->msg_type == RADIUS_AUTH ? radius->auth_sock :
    radius->acct_sock;
   if (entry->attempts > RADIUS_CLIENT_NUM_FAILOVER ||
       (s < 0 && entry->attempts > 0)) {
    if (entry->msg_type == RADIUS_ACCT ||
        entry->msg_type == RADIUS_ACCT_INTERIM)
     acct_failover++;
    else
     auth_failover++;
   }
  }
  entry = entry->next;
 }

 if (auth_failover)
  radius_client_auth_failover(radius);

 if (acct_failover)
  radius_client_acct_failover(radius);

 entry = radius->msgs;
 first = 0;

 prev = ((void*)0);
 while (entry) {
  prev_num_msgs = radius->num_msgs;
  if (now.sec >= entry->next_try &&
      radius_client_retransmit(radius, entry, now.sec)) {
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

  if (prev_num_msgs != radius->num_msgs) {
   wpa_printf(MSG_DEBUG,
       "RADIUS: Message removed from queue - restart from beginning");
   entry = radius->msgs;
   prev = ((void*)0);
   continue;
  }

  if (first == 0 || entry->next_try < first)
   first = entry->next_try;

  prev = entry;
  entry = entry->next;
 }

 if (radius->msgs) {
  if (first < now.sec)
   first = now.sec;
  eloop_cancel_timeout(radius_client_timer, radius, ((void*)0));
  eloop_register_timeout(first - now.sec, 0,
           radius_client_timer, radius, ((void*)0));
  hostapd_logger(radius->ctx, ((void*)0), HOSTAPD_MODULE_RADIUS,
          HOSTAPD_LEVEL_DEBUG, "Next RADIUS client "
          "retransmit in %ld seconds",
          (long int) (first - now.sec));
 }
}
