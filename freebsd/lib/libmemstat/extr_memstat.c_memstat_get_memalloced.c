
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct memory_type {int mt_memalloced; } ;



uint64_t
memstat_get_memalloced(const struct memory_type *mtp)
{

 return (mtp->mt_memalloced);
}
