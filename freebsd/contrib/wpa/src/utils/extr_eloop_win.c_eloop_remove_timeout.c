
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eloop_timeout {int list; } ;


 int dl_list_del (int *) ;
 int os_free (struct eloop_timeout*) ;

__attribute__((used)) static void eloop_remove_timeout(struct eloop_timeout *timeout)
{
 dl_list_del(&timeout->list);
 os_free(timeout);
}
