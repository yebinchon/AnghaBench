
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker {int base; } ;


 int comm_base_dispatch (int ) ;

void
worker_work(struct worker* worker)
{
 comm_base_dispatch(worker->base);
}
