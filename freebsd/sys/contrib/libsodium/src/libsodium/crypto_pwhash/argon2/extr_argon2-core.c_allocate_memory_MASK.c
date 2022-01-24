#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void uint8_t ;
typedef  int uint32_t ;
struct TYPE_3__ {size_t size; int /*<<< orphan*/ * memory; void* base; } ;
typedef  TYPE_1__ block_region ;
typedef  int /*<<< orphan*/  block ;

/* Variables and functions */
 int ARGON2_MEMORY_ALLOCATION_ERROR ; 
 int ARGON2_OK ; 
 int /*<<< orphan*/  ENOMEM ; 
 int MAP_ANON ; 
 void* MAP_FAILED ; 
 int MAP_NOCORE ; 
 int MAP_POPULATE ; 
 int MAP_PRIVATE ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  errno ; 
 void* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,void**,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,size_t,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void**,int,size_t) ; 

__attribute__((used)) static int
FUNC4(block_region **region, uint32_t m_cost)
{
    void * base;
    block *memory;
    size_t memory_size;

    if (region == NULL) {
        return ARGON2_MEMORY_ALLOCATION_ERROR; /* LCOV_EXCL_LINE */
    }
    memory_size = sizeof(block) * m_cost;
    if (m_cost == 0 ||
        memory_size / m_cost !=
            sizeof(block)) { /*1. Check for multiplication overflow*/
        return ARGON2_MEMORY_ALLOCATION_ERROR; /* LCOV_EXCL_LINE */
    }
    *region = (block_region *) FUNC0(
        sizeof(block_region)); /*2. Try to allocate region*/
    if (!*region) {
        return ARGON2_MEMORY_ALLOCATION_ERROR; /* LCOV_EXCL_LINE */
    }
    (*region)->base = (*region)->memory = NULL;

#if defined(MAP_ANON) && defined(HAVE_MMAP)
    if ((base = mmap(NULL, memory_size, PROT_READ | PROT_WRITE,
                     MAP_ANON | MAP_PRIVATE | MAP_NOCORE | MAP_POPULATE,
                     -1, 0)) == MAP_FAILED) {
        base = NULL; /* LCOV_EXCL_LINE */
    }                /* LCOV_EXCL_LINE */
    memcpy(&memory, &base, sizeof memory);
#elif defined(HAVE_POSIX_MEMALIGN)
    if ((errno = posix_memalign((void **) &base, 64, memory_size)) != 0) {
        base = NULL;
    }
    memcpy(&memory, &base, sizeof memory);
#else
    memory = NULL;
    if (memory_size + 63 < memory_size) {
        base  = NULL;
        errno = ENOMEM;
    } else if ((base = FUNC0(memory_size + 63)) != NULL) {
        uint8_t *aligned = ((uint8_t *) base) + 63;
        aligned -= (uintptr_t) aligned & 63;
        FUNC1(&memory, &aligned, sizeof memory);
    }
#endif
    if (base == NULL) {
        return ARGON2_MEMORY_ALLOCATION_ERROR; /* LCOV_EXCL_LINE */
    }
    (*region)->base   = base;
    (*region)->memory = memory;
    (*region)->size   = memory_size;

    return ARGON2_OK;
}