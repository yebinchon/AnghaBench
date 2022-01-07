
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct __timer* timer_t ;
struct sigevent {scalar_t__ sigev_notify; } ;
struct sigev_node {int sn_id; int sn_dispatch; int sn_flags; int sn_gen; } ;
struct __timer {struct sigev_node* node; int oshandle; } ;
typedef int clockid_t ;


 int EAGAIN ;
 int EINVAL ;
 scalar_t__ SIGEV_THREAD ;
 int SI_TIMER ;
 int SNF_SYNC ;
 struct sigev_node* __sigev_alloc (int ,struct sigevent*,int *,int ) ;
 scalar_t__ __sigev_check_init () ;
 int __sigev_free (struct sigev_node*) ;
 int __sigev_get_sigevent (struct sigev_node*,struct sigevent*,int ) ;
 int __sigev_list_lock () ;
 int __sigev_list_unlock () ;
 int __sigev_register (struct sigev_node*) ;
 int __sys_ktimer_create (int ,struct sigevent*,int *) ;
 int errno ;
 int free (struct __timer*) ;
 struct __timer* malloc (int) ;
 int timer_dispatch ;

int
__timer_create(clockid_t clockid, struct sigevent *evp, timer_t *timerid)
{
 struct __timer *timer;
 struct sigevent ev;
 struct sigev_node *sn;
 int ret, err;

 timer = malloc(sizeof(struct __timer));
 if (timer == ((void*)0))
  return (-1);

 if (evp == ((void*)0) || evp->sigev_notify != SIGEV_THREAD) {
  ret = __sys_ktimer_create(clockid, evp, &timer->oshandle);
  if (ret == -1) {
   err = errno;
   free(timer);
   errno = err;
   return (ret);
  }
  timer->node = ((void*)0);
  *timerid = timer;
  return (0);
 }

 if (__sigev_check_init()) {
  free(timer);
  errno = EINVAL;
  return (-1);
 }

 sn = __sigev_alloc(SI_TIMER, evp, ((void*)0), 0);
 if (sn == ((void*)0)) {
  free(timer);
  errno = EAGAIN;
  return (-1);
 }

 __sigev_get_sigevent(sn, &ev, sn->sn_gen);
 ret = __sys_ktimer_create(clockid, &ev, &timer->oshandle);
 if (ret != 0) {
  err = errno;
  __sigev_free(sn);
  free(timer);
  errno = err;
  return (-1);
 }
 sn->sn_flags |= SNF_SYNC;
 sn->sn_dispatch = timer_dispatch;
 sn->sn_id = timer->oshandle;
 timer->node = sn;
 __sigev_list_lock();
 __sigev_register(sn);
 __sigev_list_unlock();
 *timerid = timer;
 return (0);
}
