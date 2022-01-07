
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct memory_type {TYPE_1__* mt_percpu_alloc; } ;
struct TYPE_2__ {void** mtp_caller_pointer; } ;



void
memstat_set_percpu_caller_pointer(struct memory_type *mtp, int cpu,
    int index, void *value)
{

 mtp->mt_percpu_alloc[cpu].mtp_caller_pointer[index] = value;
}
