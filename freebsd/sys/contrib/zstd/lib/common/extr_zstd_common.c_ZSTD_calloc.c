
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* (* customAlloc ) (int ,size_t) ;int opaque; } ;
typedef TYPE_1__ ZSTD_customMem ;


 void* calloc (int,size_t) ;
 int memset (void* const,int ,size_t) ;
 void* stub1 (int ,size_t) ;

void* ZSTD_calloc(size_t size, ZSTD_customMem customMem)
{
    if (customMem.customAlloc) {


        void* const ptr = customMem.customAlloc(customMem.opaque, size);
        memset(ptr, 0, size);
        return ptr;
    }
    return calloc(1, size);
}
