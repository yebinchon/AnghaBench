
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void uint8_t ;
struct TYPE_3__ {size_t size; void* aligned; void* base; } ;
typedef TYPE_1__ escrypt_region_t ;


 int ENOMEM ;
 int MAP_ANON ;
 void* MAP_FAILED ;
 int MAP_NOCORE ;
 int MAP_POPULATE ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 int PROT_WRITE ;
 int errno ;
 scalar_t__ malloc (size_t) ;
 scalar_t__ mmap (int *,size_t,int,int,int,int ) ;
 int posix_memalign (void**,int,size_t) ;

void *
alloc_region(escrypt_region_t *region, size_t size)
{
    uint8_t *base, *aligned;
    base = aligned = ((void*)0);
    if (size + 63 < size) {
        errno = ENOMEM;
    } else if ((base = (uint8_t *) malloc(size + 63)) != ((void*)0)) {
        aligned = base + 63;
        aligned -= (uintptr_t) aligned & 63;
    }

    region->base = base;
    region->aligned = aligned;
    region->size = base ? size : 0;

    return aligned;
}
