
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct daemon {int num; int * cfg; int * dnscenv; int * dtenv; int superalloc; int * workers; int rc; TYPE_2__* env; int * views; int * respip_set; int * local_zones; } ;
struct TYPE_4__ {scalar_t__ auth_zones; int * msg_cache; TYPE_1__* rrset_cache; } ;
struct TYPE_3__ {int table; } ;


 int alloc_clear_special (int *) ;
 int auth_zones_cleanup (scalar_t__) ;
 int daemon_remote_clear (int ) ;
 int dnsc_delete (int *) ;
 int dt_delete (int *) ;
 int free (int *) ;
 int local_zones_delete (int *) ;
 int log_assert (struct daemon*) ;
 int log_thread_set (int *) ;
 int respip_set_delete (int *) ;
 int signal_handling_record () ;
 int slabhash_clear (int *) ;
 int views_delete (int *) ;
 int worker_delete (int ) ;

void
daemon_cleanup(struct daemon* daemon)
{
 int i;
 log_assert(daemon);


 signal_handling_record();
 log_thread_set(((void*)0));



 slabhash_clear(&daemon->env->rrset_cache->table);
 slabhash_clear(daemon->env->msg_cache);
 local_zones_delete(daemon->local_zones);
 daemon->local_zones = ((void*)0);
 respip_set_delete(daemon->respip_set);
 daemon->respip_set = ((void*)0);
 views_delete(daemon->views);
 daemon->views = ((void*)0);
 if(daemon->env->auth_zones)
  auth_zones_cleanup(daemon->env->auth_zones);

 daemon_remote_clear(daemon->rc);
 for(i=0; i<daemon->num; i++)
  worker_delete(daemon->workers[i]);
 free(daemon->workers);
 daemon->workers = ((void*)0);
 daemon->num = 0;
 alloc_clear_special(&daemon->superalloc);
 daemon->cfg = ((void*)0);
}
