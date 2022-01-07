
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int system_taskq ;
 int taskq_destroy (int ) ;
 int taskq_zone ;
 int uma_zdestroy (int ) ;

__attribute__((used)) static void
system_taskq_fini(void *arg)
{

 taskq_destroy(system_taskq);
 uma_zdestroy(taskq_zone);
}
