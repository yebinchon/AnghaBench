
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sigev_node {int sn_flags; TYPE_1__* sn_tn; } ;
struct TYPE_2__ {int tn_cv; int * tn_cur; } ;


 int SNF_REMOVED ;
 int SNF_SYNC ;
 int SNF_WORKING ;
 int __sigev_free (struct sigev_node*) ;
 int __sigev_list_lock () ;
 int __sigev_list_unlock () ;
 int _pthread_cond_broadcast (int *) ;

__attribute__((used)) static void
worker_cleanup(void *arg)
{
 struct sigev_node *sn = arg;

 __sigev_list_lock();
 if (sn->sn_flags & SNF_SYNC) {
  sn->sn_tn->tn_cur = ((void*)0);
  _pthread_cond_broadcast(&sn->sn_tn->tn_cv);
 }
 if (sn->sn_flags & SNF_REMOVED)
  __sigev_free(sn);
 else
  sn->sn_flags &= ~SNF_WORKING;
 __sigev_list_unlock();
}
