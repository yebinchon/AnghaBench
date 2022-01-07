
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cond_wait {int lock; int cond; } ;
typedef int evutil_socket_t ;


 int EVLOCK_LOCK (int ,int ) ;
 int EVLOCK_UNLOCK (int ,int ) ;
 int EVTHREAD_COND_SIGNAL (int ) ;

__attribute__((used)) static void
wake_one_timeout(evutil_socket_t fd, short what, void *arg)
{
 struct cond_wait *cw = arg;
 EVLOCK_LOCK(cw->lock, 0);
 EVTHREAD_COND_SIGNAL(cw->cond);
 EVLOCK_UNLOCK(cw->lock, 0);
}
