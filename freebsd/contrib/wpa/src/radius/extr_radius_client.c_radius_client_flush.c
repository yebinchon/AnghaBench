
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radius_msg_list {scalar_t__ msg_type; struct radius_msg_list* next; } ;
struct radius_client_data {struct radius_msg_list* msgs; int num_msgs; } ;


 scalar_t__ RADIUS_AUTH ;
 int eloop_cancel_timeout (int ,struct radius_client_data*,int *) ;
 int radius_client_msg_free (struct radius_msg_list*) ;
 int radius_client_timer ;

void radius_client_flush(struct radius_client_data *radius, int only_auth)
{
 struct radius_msg_list *entry, *prev, *tmp;

 if (!radius)
  return;

 prev = ((void*)0);
 entry = radius->msgs;

 while (entry) {
  if (!only_auth || entry->msg_type == RADIUS_AUTH) {
   if (prev)
    prev->next = entry->next;
   else
    radius->msgs = entry->next;

   tmp = entry;
   entry = entry->next;
   radius_client_msg_free(tmp);
   radius->num_msgs--;
  } else {
   prev = entry;
   entry = entry->next;
  }
 }

 if (radius->msgs == ((void*)0))
  eloop_cancel_timeout(radius_client_timer, radius, ((void*)0));
}
