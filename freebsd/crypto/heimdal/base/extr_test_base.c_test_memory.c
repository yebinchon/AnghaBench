
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* heim_alloc (int,char*,int *) ;
 int heim_release (void*) ;
 int heim_retain (void*) ;
 int * memory_free ;

__attribute__((used)) static int
test_memory(void)
{
    void *ptr;

    ptr = heim_alloc(10, "memory", memory_free);

    heim_retain(ptr);
    heim_release(ptr);

    heim_retain(ptr);
    heim_release(ptr);

    heim_release(ptr);

    ptr = heim_alloc(10, "memory", ((void*)0));
    heim_release(ptr);

    return 0;
}
