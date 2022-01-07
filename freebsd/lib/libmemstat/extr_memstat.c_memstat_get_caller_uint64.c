
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct memory_type {int * mt_caller_uint64; } ;



uint64_t
memstat_get_caller_uint64(const struct memory_type *mtp, int index)
{

 return (mtp->mt_caller_uint64[index]);
}
