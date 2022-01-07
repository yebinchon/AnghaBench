
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_FAIL_MESSAGE (char*) ;
 int isOverrun (void*) ;
 int release_memory (void*) ;

void unity_free(void * mem)
{
    int overrun = isOverrun(mem);
    release_memory(mem);
    if (overrun)
    {
        TEST_FAIL_MESSAGE("Buffer overrun detected during free()");
    }
}
