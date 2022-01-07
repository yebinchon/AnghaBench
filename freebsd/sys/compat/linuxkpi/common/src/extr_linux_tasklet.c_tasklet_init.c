
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tasklet_func_t ;
struct TYPE_2__ {int * tqe_next; int * tqe_prev; } ;
struct tasklet_struct {unsigned long data; int count; int tasklet_state; int * func; TYPE_1__ entry; } ;


 int TASKLET_ST_IDLE ;
 int atomic_set (int *,int ) ;
 int atomic_set_int (int *,int ) ;

void
tasklet_init(struct tasklet_struct *ts,
    tasklet_func_t *func, unsigned long data)
{
 ts->entry.tqe_prev = ((void*)0);
 ts->entry.tqe_next = ((void*)0);
 ts->func = func;
 ts->data = data;
 atomic_set_int(&ts->tasklet_state, TASKLET_ST_IDLE);
 atomic_set(&ts->count, 0);
}
