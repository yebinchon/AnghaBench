
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct worker {TYPE_1__* daemon; } ;
struct view {int lock; scalar_t__ local_zones; } ;
struct TYPE_2__ {int views; } ;
typedef int RES ;


 int do_list_local_zones (int *,scalar_t__) ;
 int lock_rw_unlock (int *) ;
 int ssl_printf (int *,char*,char*) ;
 struct view* views_find_view (int ,char*,int ) ;

__attribute__((used)) static void
do_view_list_local_zones(RES* ssl, struct worker* worker, char* arg)
{
 struct view* v = views_find_view(worker->daemon->views,
  arg, 0 );
 if(!v) {
  ssl_printf(ssl,"no view with name: %s\n", arg);
  return;
 }
 if(v->local_zones) {
  do_list_local_zones(ssl, v->local_zones);
 }
 lock_rw_unlock(&v->lock);
}
