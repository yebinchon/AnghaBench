
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int * vm_map_t ;
struct vm_area_struct {int dummy; } ;
struct task_struct {TYPE_3__* task_thread; } ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
struct TYPE_6__ {TYPE_2__* td_proc; } ;
struct TYPE_5__ {TYPE_1__* p_vmspace; } ;
struct TYPE_4__ {int vm_map; } ;


 int FOLL_WRITE ;
 long linux_get_user_pages_internal (int *,unsigned long,unsigned long,int,struct page**) ;

long
get_user_pages_remote(struct task_struct *task, struct mm_struct *mm,
    unsigned long start, unsigned long nr_pages, int gup_flags,
    struct page **pages, struct vm_area_struct **vmas)
{
 vm_map_t map;

 map = &task->task_thread->td_proc->p_vmspace->vm_map;
 return (linux_get_user_pages_internal(map, start, nr_pages,
     !!(gup_flags & FOLL_WRITE), pages));
}
