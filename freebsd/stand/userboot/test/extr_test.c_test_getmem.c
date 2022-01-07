
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



void
test_getmem(void *arg, uint64_t *lowmem, uint64_t *highmem)
{

        *lowmem = 128*1024*1024;
        *highmem = 0;
}
