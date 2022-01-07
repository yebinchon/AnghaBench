
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef struct sigevent {scalar_t__ sigev_notify; } const sigevent ;
struct sigev_node {int sn_gen; int sn_dispatch; int sn_id; } ;
typedef TYPE_1__* mqd_t ;
struct TYPE_3__ {int oshandle; struct sigev_node* node; } ;


 int EAGAIN ;
 int EINVAL ;
 scalar_t__ SIGEV_THREAD ;
 int SI_MESGQ ;
 struct sigev_node* __sigev_alloc (int ,struct sigevent const*,struct sigev_node*,int) ;
 scalar_t__ __sigev_check_init () ;
 int __sigev_delete_node (struct sigev_node*) ;
 int __sigev_get_sigevent (struct sigev_node*,struct sigevent const*,int ) ;
 int __sigev_list_lock () ;
 int __sigev_list_unlock () ;
 int __sigev_register (struct sigev_node*) ;
 int __sys_kmq_notify (int ,struct sigevent const*) ;
 int errno ;
 int mq_dispatch ;

int
__mq_notify(mqd_t mqd, const struct sigevent *evp)
{
 struct sigevent ev;
 struct sigev_node *sn;
 int ret;

 if (evp == ((void*)0) || evp->sigev_notify != SIGEV_THREAD) {
  if (mqd->node != ((void*)0)) {
   __sigev_list_lock();
   __sigev_delete_node(mqd->node);
   mqd->node = ((void*)0);
   __sigev_list_unlock();
  }
  return __sys_kmq_notify(mqd->oshandle, evp);
 }

 if (__sigev_check_init()) {



  errno = EINVAL;
  return (-1);
 }

 sn = __sigev_alloc(SI_MESGQ, evp, mqd->node, 1);
 if (sn == ((void*)0)) {
  errno = EAGAIN;
  return (-1);
 }

 sn->sn_id = mqd->oshandle;
 sn->sn_dispatch = mq_dispatch;
 __sigev_get_sigevent(sn, &ev, sn->sn_gen);
 __sigev_list_lock();
 if (mqd->node != ((void*)0))
  __sigev_delete_node(mqd->node);
 mqd->node = sn;
 __sigev_register(sn);
 ret = __sys_kmq_notify(mqd->oshandle, &ev);
 __sigev_list_unlock();
 return (ret);
}
