
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct memory_type {int * mt_caller_uint64; } ;



void
memstat_set_caller_uint64(struct memory_type *mtp, int index, uint64_t value)
{

 mtp->mt_caller_uint64[index] = value;
}
