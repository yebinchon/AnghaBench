
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int taskq_t ;
typedef int proc_t ;
typedef int pri_t ;


 int * taskq_create_impl (char const*,int,int ,int *,int ) ;

taskq_t *
taskq_create_proc(const char *name, int nthreads, pri_t pri, int minalloc,
    int maxalloc, proc_t *proc, uint_t flags)
{
 return (taskq_create_impl(name, nthreads, pri, proc, flags));
}
