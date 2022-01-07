
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct worker {TYPE_1__* daemon; } ;
struct view {int lock; scalar_t__ local_zones; } ;
struct TYPE_2__ {int views; } ;
typedef int RES ;


 int do_data_add (int *,scalar_t__,char*) ;
 int find_arg2 (int *,char*,char**) ;
 scalar_t__ local_zones_create () ;
 int lock_rw_unlock (int *) ;
 int ssl_printf (int *,char*,...) ;
 struct view* views_find_view (int ,char*,int) ;

__attribute__((used)) static void
do_view_data_add(RES* ssl, struct worker* worker, char* arg)
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
  if(!(v->local_zones = local_zones_create())){
   lock_rw_unlock(&v->lock);
   ssl_printf(ssl,"error out of memory\n");
   return;
  }
 }
 do_data_add(ssl, v->local_zones, arg2);
 lock_rw_unlock(&v->lock);
}
