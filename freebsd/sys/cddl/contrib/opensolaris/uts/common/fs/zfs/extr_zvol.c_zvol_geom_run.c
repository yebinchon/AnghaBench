
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct g_provider* zv_provider; } ;
typedef TYPE_1__ zvol_state_t ;
struct g_provider {scalar_t__ name; } ;
typedef int ZVOL_DRIVER ;


 int g_error_provider (struct g_provider*,int ) ;
 int kproc_kthread_add (int ,TYPE_1__*,int *,int *,int ,int ,char*,char*,scalar_t__) ;
 int system_proc ;
 int zvol_geom_worker ;

__attribute__((used)) static void
zvol_geom_run(zvol_state_t *zv)
{
 struct g_provider *pp;

 pp = zv->zv_provider;
 g_error_provider(pp, 0);

 kproc_kthread_add(zvol_geom_worker, zv, &system_proc, ((void*)0), 0, 0,
     "zfskern", "zvol %s", pp->name + sizeof(ZVOL_DRIVER));
}
