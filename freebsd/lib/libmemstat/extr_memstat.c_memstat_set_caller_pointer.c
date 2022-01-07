
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_type {void** mt_caller_pointer; } ;



void
memstat_set_caller_pointer(struct memory_type *mtp, int index, void *value)
{

 mtp->mt_caller_pointer[index] = value;
}
