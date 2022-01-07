
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t size; } ;
typedef TYPE_1__ Guard ;


 scalar_t__ MALLOC_DONT_FAIL ;
 int end ;
 scalar_t__ malloc (size_t) ;
 int malloc_count ;
 scalar_t__ malloc_fail_countdown ;
 int memcpy (char*,int ,scalar_t__) ;
 scalar_t__ strlen (int ) ;

void * unity_malloc(size_t size)
{
    char* mem;
    Guard* guard;

    if (malloc_fail_countdown != MALLOC_DONT_FAIL)
    {
        if (malloc_fail_countdown == 0)
            return 0;
        malloc_fail_countdown--;
    }

    malloc_count++;

    guard = (Guard*)malloc(size + sizeof(Guard) + 4);
    guard->size = size;
    mem = (char*)&(guard[1]);
    memcpy(&mem[size], end, strlen(end) + 1);

    return (void*)mem;
}
