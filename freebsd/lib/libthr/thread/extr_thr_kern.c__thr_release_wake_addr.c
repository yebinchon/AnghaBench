
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wake_addr {struct wake_addr* link; } ;
struct pthread {int dummy; } ;


 int THR_LOCK_ACQUIRE (struct pthread*,int *) ;
 int THR_LOCK_RELEASE (struct pthread*,int *) ;
 struct pthread* _get_curthread () ;
 int addr_lock ;
 struct wake_addr default_wake_addr ;
 struct wake_addr* wake_addr_head ;

void
_thr_release_wake_addr(struct wake_addr *wa)
{
 struct pthread *curthread = _get_curthread();

 if (wa == &default_wake_addr)
  return;
 THR_LOCK_ACQUIRE(curthread, &addr_lock);
 wa->link = wake_addr_head;
 wake_addr_head = wa;
 THR_LOCK_RELEASE(curthread, &addr_lock);
}
