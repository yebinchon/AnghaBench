
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_type {int mt_allocator; } ;



int
memstat_get_allocator(const struct memory_type *mtp)
{

 return (mtp->mt_allocator);
}
