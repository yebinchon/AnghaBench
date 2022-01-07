
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zbookmark_phys_t ;
struct TYPE_5__ {TYPE_1__* td_pfd; int td_rootbp; int td_objset; int * td_resume; TYPE_1__* td_arg; int td_func; } ;
typedef TYPE_2__ traverse_data_t ;
struct TYPE_4__ {int pd_mtx; int pd_cv; int pd_exited; int pd_resume; } ;


 int B_TRUE ;
 int SET_BOOKMARK (int *,int ,int ,int ,int ) ;
 int ZB_ROOT_BLKID ;
 int ZB_ROOT_LEVEL ;
 int ZB_ROOT_OBJECT ;
 int cv_broadcast (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int traverse_prefetcher ;
 int traverse_visitbp (TYPE_2__*,int *,int ,int *) ;

__attribute__((used)) static void
traverse_prefetch_thread(void *arg)
{
 traverse_data_t *td_main = arg;
 traverse_data_t td = *td_main;
 zbookmark_phys_t czb;

 td.td_func = traverse_prefetcher;
 td.td_arg = td_main->td_pfd;
 td.td_pfd = ((void*)0);
 td.td_resume = &td_main->td_pfd->pd_resume;

 SET_BOOKMARK(&czb, td.td_objset,
     ZB_ROOT_OBJECT, ZB_ROOT_LEVEL, ZB_ROOT_BLKID);
 (void) traverse_visitbp(&td, ((void*)0), td.td_rootbp, &czb);

 mutex_enter(&td_main->td_pfd->pd_mtx);
 td_main->td_pfd->pd_exited = B_TRUE;
 cv_broadcast(&td_main->td_pfd->pd_cv);
 mutex_exit(&td_main->td_pfd->pd_mtx);
}
