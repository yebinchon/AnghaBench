
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct worker {TYPE_1__* daemon; } ;
struct view {int lock; int local_zones; } ;
struct TYPE_2__ {int views; } ;
typedef int RES ;


 int do_zone_remove (int *,int ,char*) ;
 int find_arg2 (int *,char*,char**) ;
 int lock_rw_unlock (int *) ;
 int send_ok (int *) ;
 int ssl_printf (int *,char*,char*) ;
 struct view* views_find_view (int ,char*,int) ;

__attribute__((used)) static void
do_view_zone_remove(RES* ssl, struct worker* worker, char* arg)
{
 char* arg2;
 struct view* v;
 if(!find_arg2(ssl, arg, &arg2))
  return;
 v = views_find_view(worker->daemon->views,
  arg, 1 );
 if(!v) {
  ssl_printf(ssl,"no view with name: %s\n", arg);
  return;
 }
 if(!v->local_zones) {
  lock_rw_unlock(&v->lock);
  send_ok(ssl);
  return;
 }
 do_zone_remove(ssl, v->local_zones, arg2);
 lock_rw_unlock(&v->lock);
}
