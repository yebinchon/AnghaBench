
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eloop_timeout {int user_data; int eloop_data; int list; } ;


 int dl_list_del (int *) ;
 int eloop ;
 int os_free (struct eloop_timeout*) ;
 int user ;
 int wpa_trace_remove_ref (struct eloop_timeout*,int ,int ) ;

__attribute__((used)) static void eloop_remove_timeout(struct eloop_timeout *timeout)
{
 dl_list_del(&timeout->list);
 wpa_trace_remove_ref(timeout, eloop, timeout->eloop_data);
 wpa_trace_remove_ref(timeout, user, timeout->user_data);
 os_free(timeout);
}
