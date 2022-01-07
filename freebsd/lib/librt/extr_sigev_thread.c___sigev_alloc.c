
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sigevent {scalar_t__ sigev_notify_attributes; int sigev_notify_function; int sigev_value; } ;
struct sigev_node {int sn_type; int sn_attr; TYPE_1__* sn_tn; int sn_gen; int sn_func; int sn_value; } ;
struct TYPE_2__ {int tn_refcount; } ;


 int PTHREAD_CREATE_DETACHED ;
 int __sigev_list_lock () ;
 int __sigev_list_unlock () ;
 int _pthread_attr_destroy (int *) ;
 int _pthread_attr_init (int *) ;
 int _pthread_attr_setdetachstate (int *,int ) ;
 int atomic_fetch_add_explicit (int *,int,int ) ;
 int attrcopy (scalar_t__,int *) ;
 struct sigev_node* calloc (int,int) ;
 int free (struct sigev_node*) ;
 int memory_order_relaxed ;
 int sigev_generation ;
 TYPE_1__* sigev_thread_create (int) ;

struct sigev_node *
__sigev_alloc(int type, const struct sigevent *evp, struct sigev_node *prev,
 int usedefault)
{
 struct sigev_node *sn;

 sn = calloc(1, sizeof(*sn));
 if (sn != ((void*)0)) {
  sn->sn_value = evp->sigev_value;
  sn->sn_func = evp->sigev_notify_function;
  sn->sn_gen = atomic_fetch_add_explicit(&sigev_generation, 1,
      memory_order_relaxed);
  sn->sn_type = type;
  _pthread_attr_init(&sn->sn_attr);
  _pthread_attr_setdetachstate(&sn->sn_attr, PTHREAD_CREATE_DETACHED);
  if (evp->sigev_notify_attributes)
   attrcopy(evp->sigev_notify_attributes, &sn->sn_attr);
  if (prev) {
   __sigev_list_lock();
   prev->sn_tn->tn_refcount++;
   __sigev_list_unlock();
   sn->sn_tn = prev->sn_tn;
  } else {
   sn->sn_tn = sigev_thread_create(usedefault);
   if (sn->sn_tn == ((void*)0)) {
    _pthread_attr_destroy(&sn->sn_attr);
    free(sn);
    sn = ((void*)0);
   }
  }
 }
 return (sn);
}
