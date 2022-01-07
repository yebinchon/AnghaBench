
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Guard ;


 int free (int *) ;
 int malloc_count ;

__attribute__((used)) static void release_memory(void * mem)
{
    Guard* guard = (Guard*)mem;
    guard--;

    malloc_count--;
    free(guard);
}
