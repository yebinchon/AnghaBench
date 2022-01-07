
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {scalar_t__ is_notify_pending; } ;
typedef int evutil_socket_t ;
typedef int buf ;


 int EVBASE_ACQUIRE_LOCK (struct event_base*,int ) ;
 int EVBASE_RELEASE_LOCK (struct event_base*,int ) ;
 scalar_t__ read (int ,char*,int) ;
 scalar_t__ recv (int ,char*,int,int ) ;
 int th_base_lock ;

__attribute__((used)) static void
evthread_notify_drain_default(evutil_socket_t fd, short what, void *arg)
{
 unsigned char buf[1024];
 struct event_base *base = arg;




 while (read(fd, (char*)buf, sizeof(buf)) > 0)
  ;


 EVBASE_ACQUIRE_LOCK(base, th_base_lock);
 base->is_notify_pending = 0;
 EVBASE_RELEASE_LOCK(base, th_base_lock);
}
