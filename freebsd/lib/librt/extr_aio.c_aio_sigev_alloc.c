
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigevent {int dummy; } ;
struct sigev_node {int sn_dispatch; int sn_id; } ;
typedef int sigev_id_t ;


 int EAGAIN ;
 int EINVAL ;
 int SI_ASYNCIO ;
 struct sigev_node* __sigev_alloc (int ,struct sigevent*,int *,int) ;
 scalar_t__ __sigev_check_init () ;
 int __sigev_get_sigevent (struct sigev_node*,struct sigevent*,int ) ;
 int __sigev_list_lock () ;
 int __sigev_list_unlock () ;
 int __sigev_register (struct sigev_node*) ;
 int aio_dispatch ;
 int errno ;

__attribute__((used)) static int
aio_sigev_alloc(sigev_id_t id, struct sigevent *sigevent,
    struct sigev_node **sn, struct sigevent *saved_ev)
{
 if (__sigev_check_init()) {

  errno = EINVAL;
  return (-1);
 }

 *sn = __sigev_alloc(SI_ASYNCIO, sigevent, ((void*)0), 1);
 if (*sn == ((void*)0)) {
  errno = EAGAIN;
  return (-1);
 }

 *saved_ev = *sigevent;
 (*sn)->sn_id = id;
 __sigev_get_sigevent(*sn, sigevent, (*sn)->sn_id);
 (*sn)->sn_dispatch = aio_dispatch;

 __sigev_list_lock();
 __sigev_register(*sn);
 __sigev_list_unlock();

 return (0);
}
