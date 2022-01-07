
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct cvmx_zone {int dummy; } ;
typedef TYPE_2__* cvmx_zone_t ;
typedef int cvmx_arena_list_t ;
struct TYPE_4__ {int value; } ;
struct TYPE_5__ {unsigned int elem_size; unsigned int num_elem; char* name; unsigned int align; char* baseptr; int * freelist; TYPE_1__ lock; } ;


 int CVMX_SPINLOCK_UNLOCKED_VAL ;
 scalar_t__ cvmx_malloc (int ,int) ;
 scalar_t__ cvmx_memalign (int ,unsigned int,unsigned int) ;

cvmx_zone_t cvmx_zone_create_from_arena(char *name, uint32_t elem_size, uint32_t num_elem, uint32_t align, cvmx_arena_list_t arena_list, uint32_t flags)
{
    unsigned int i;
    cvmx_zone_t zone;

    zone = (cvmx_zone_t)cvmx_malloc(arena_list, sizeof(struct cvmx_zone));

    if (((void*)0) == zone)
    {
        return(((void*)0));
    }
    zone->elem_size = elem_size;
    zone->num_elem = num_elem;
    zone->name = name;
    zone->align = align;
    zone->baseptr = ((void*)0);
    zone->freelist = ((void*)0);
    zone->lock.value = CVMX_SPINLOCK_UNLOCKED_VAL;

    zone->baseptr = (char *)cvmx_memalign(arena_list, align, num_elem * elem_size);
    if (((void*)0) == zone->baseptr)
    {
        return(((void*)0));
    }

    for(i=0;i<num_elem;i++)
    {
        *(void **)(zone->baseptr + (i*elem_size)) = zone->freelist;
        zone->freelist = (void *)(zone->baseptr + (i*elem_size));
    }

    return(zone);

}
