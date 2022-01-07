
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int taskq_ent_t ;


 int minclsyspri ;
 int mp_ncpus ;
 int system_taskq ;
 int taskq_create (char*,int ,int ,int ,int ,int ) ;
 int taskq_zone ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;

__attribute__((used)) static void
system_taskq_init(void *arg)
{

 taskq_zone = uma_zcreate("taskq_zone", sizeof(taskq_ent_t),
     ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0, 0);
 system_taskq = taskq_create("system_taskq", mp_ncpus, minclsyspri,
     0, 0, 0);
}
