
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {size_t size; int * memory; void* base; } ;
typedef TYPE_1__ block_region ;
typedef int block ;


 int ARGON2_MEMORY_ALLOCATION_ERROR ;
 int ARGON2_OK ;
 int ENOMEM ;
 int MAP_ANON ;
 void* MAP_FAILED ;
 int MAP_NOCORE ;
 int MAP_POPULATE ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 int PROT_WRITE ;
 int errno ;
 void* malloc (size_t) ;
 int memcpy (int **,void**,int) ;
 void* mmap (int *,size_t,int,int,int,int ) ;
 int posix_memalign (void**,int,size_t) ;

__attribute__((used)) static int
allocate_memory(block_region **region, uint32_t m_cost)
{
    void * base;
    block *memory;
    size_t memory_size;

    if (region == ((void*)0)) {
        return ARGON2_MEMORY_ALLOCATION_ERROR;
    }
    memory_size = sizeof(block) * m_cost;
    if (m_cost == 0 ||
        memory_size / m_cost !=
            sizeof(block)) {
        return ARGON2_MEMORY_ALLOCATION_ERROR;
    }
    *region = (block_region *) malloc(
        sizeof(block_region));
    if (!*region) {
        return ARGON2_MEMORY_ALLOCATION_ERROR;
    }
    (*region)->base = (*region)->memory = ((void*)0);
    memory = ((void*)0);
    if (memory_size + 63 < memory_size) {
        base = ((void*)0);
        errno = ENOMEM;
    } else if ((base = malloc(memory_size + 63)) != ((void*)0)) {
        uint8_t *aligned = ((uint8_t *) base) + 63;
        aligned -= (uintptr_t) aligned & 63;
        memcpy(&memory, &aligned, sizeof memory);
    }

    if (base == ((void*)0)) {
        return ARGON2_MEMORY_ALLOCATION_ERROR;
    }
    (*region)->base = base;
    (*region)->memory = memory;
    (*region)->size = memory_size;

    return ARGON2_OK;
}
