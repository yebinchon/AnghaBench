
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* cvmx_zone_t ;
struct TYPE_3__ {unsigned long num_elem; unsigned long elem_size; int lock; void* freelist; int * baseptr; } ;


 int assert (int) ;
 int cvmx_spinlock_lock (int *) ;
 int cvmx_spinlock_unlock (int *) ;

void cvmx_zone_free(cvmx_zone_t zone, void *ptr)
{

    assert(zone != ((void*)0));
    assert(zone->baseptr != ((void*)0));
    assert((unsigned long)ptr - (unsigned long)zone->baseptr < zone->num_elem * zone->elem_size);

    cvmx_spinlock_lock(&zone->lock);
 *(void **)ptr = zone->freelist;
 zone->freelist = ptr;
    cvmx_spinlock_unlock(&zone->lock);
}
