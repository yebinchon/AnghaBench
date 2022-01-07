
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct radius_msg_list {scalar_t__ msg_type; size_t shared_secret_len; int msg; int const* shared_secret; struct radius_msg_list* next; } ;
struct radius_client_data {struct radius_msg_list* msgs; } ;


 scalar_t__ RADIUS_ACCT ;
 int radius_msg_finish_acct (int ,int const*,size_t) ;

__attribute__((used)) static void radius_client_update_acct_msgs(struct radius_client_data *radius,
        const u8 *shared_secret,
        size_t shared_secret_len)
{
 struct radius_msg_list *entry;

 if (!radius)
  return;

 for (entry = radius->msgs; entry; entry = entry->next) {
  if (entry->msg_type == RADIUS_ACCT) {
   entry->shared_secret = shared_secret;
   entry->shared_secret_len = shared_secret_len;
   radius_msg_finish_acct(entry->msg, shared_secret,
            shared_secret_len);
  }
 }
}
