
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct cvmx_zone {int dummy; } ;
typedef TYPE_2__* cvmx_zone_t ;
struct TYPE_4__ {int value; } ;
struct TYPE_5__ {int elem_size; int num_elem; char* name; char* baseptr; int * freelist; TYPE_1__ lock; scalar_t__ align; } ;


 int CVMX_SPINLOCK_UNLOCKED_VAL ;

cvmx_zone_t cvmx_zone_create_from_addr(char *name, uint32_t elem_size, uint32_t num_elem,
                             void* mem_ptr, uint64_t mem_size, uint32_t flags)
{
    cvmx_zone_t zone;
    unsigned int i;

    if ((unsigned long)mem_ptr & (sizeof(void *) -1))
    {
        return(((void*)0));
    }
    if (mem_size < sizeof(struct cvmx_zone) + elem_size * num_elem)
    {
        return(((void*)0));
    }

    zone = (cvmx_zone_t) ((char *)mem_ptr + elem_size * num_elem);
    zone->elem_size = elem_size;
    zone->num_elem = num_elem;
    zone->name = name;
    zone->align = 0;
    zone->baseptr = ((void*)0);
    zone->freelist = ((void*)0);
    zone->lock.value = CVMX_SPINLOCK_UNLOCKED_VAL;

    zone->baseptr = (char *)mem_ptr;

    for(i=0;i<num_elem;i++)
    {
        *(void **)(zone->baseptr + (i*elem_size)) = zone->freelist;
        zone->freelist = (void *)(zone->baseptr + (i*elem_size));
    }

    return(zone);

}
