
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radius_msg_list {scalar_t__ next_try; struct radius_msg_list* next; } ;
struct radius_client_data {int ctx; struct radius_msg_list* msgs; } ;
struct os_reltime {scalar_t__ sec; } ;
typedef scalar_t__ os_time_t ;


 int HOSTAPD_LEVEL_DEBUG ;
 int HOSTAPD_MODULE_RADIUS ;
 int eloop_cancel_timeout (int ,struct radius_client_data*,int *) ;
 int eloop_register_timeout (scalar_t__,int ,int ,struct radius_client_data*,int *) ;
 int hostapd_logger (int ,int *,int ,int ,char*,long) ;
 int os_get_reltime (struct os_reltime*) ;
 int radius_client_timer ;

__attribute__((used)) static void radius_client_update_timeout(struct radius_client_data *radius)
{
 struct os_reltime now;
 os_time_t first;
 struct radius_msg_list *entry;

 eloop_cancel_timeout(radius_client_timer, radius, ((void*)0));

 if (radius->msgs == ((void*)0)) {
  return;
 }

 first = 0;
 for (entry = radius->msgs; entry; entry = entry->next) {
  if (first == 0 || entry->next_try < first)
   first = entry->next_try;
 }

 os_get_reltime(&now);
 if (first < now.sec)
  first = now.sec;
 eloop_register_timeout(first - now.sec, 0, radius_client_timer, radius,
          ((void*)0));
 hostapd_logger(radius->ctx, ((void*)0), HOSTAPD_MODULE_RADIUS,
         HOSTAPD_LEVEL_DEBUG, "Next RADIUS client retransmit in"
         " %ld seconds", (long int) (first - now.sec));
}
