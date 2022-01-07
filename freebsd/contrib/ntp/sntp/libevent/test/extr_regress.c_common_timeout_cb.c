
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct common_timeout_info {int count; int ev; int called_at; } ;
typedef int evutil_socket_t ;


 int event_del (int *) ;
 int evutil_gettimeofday (int *,int *) ;

__attribute__((used)) static void
common_timeout_cb(evutil_socket_t fd, short event, void *arg)
{
 struct common_timeout_info *ti = arg;
 ++ti->count;
 evutil_gettimeofday(&ti->called_at, ((void*)0));
 if (ti->count >= 4)
  event_del(&ti->ev);
}
