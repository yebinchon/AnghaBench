
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int work_func_t ;
struct TYPE_4__ {int mtx; int callout; } ;
struct TYPE_3__ {int work_task; int func; } ;
struct delayed_work {TYPE_2__ timer; TYPE_1__ work; } ;


 int MTX_DEF ;
 int MTX_NOWITNESS ;
 int TASK_INIT (int *,int ,int ,struct delayed_work*) ;
 int callout_init_mtx (int *,int *,int ) ;
 int linux_delayed_work_fn ;
 int memset (struct delayed_work*,int ,int) ;
 int mtx_init (int *,int ,int *,int) ;
 int spin_lock_name (char*) ;

void
linux_init_delayed_work(struct delayed_work *dwork, work_func_t func)
{
 memset(dwork, 0, sizeof(*dwork));
 dwork->work.func = func;
 TASK_INIT(&dwork->work.work_task, 0, linux_delayed_work_fn, dwork);
 mtx_init(&dwork->timer.mtx, spin_lock_name("lkpi-dwork"), ((void*)0),
     MTX_DEF | MTX_NOWITNESS);
 callout_init_mtx(&dwork->timer.callout, &dwork->timer.mtx, 0);
}
