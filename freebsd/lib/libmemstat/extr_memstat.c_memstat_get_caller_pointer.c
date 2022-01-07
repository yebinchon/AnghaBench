
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_type {void** mt_caller_pointer; } ;



void *
memstat_get_caller_pointer(const struct memory_type *mtp, int index)
{

 return (mtp->mt_caller_pointer[index]);
}
