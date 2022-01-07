
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_mapper {int cm_refcount; } ;


 int REFCOUNT_PERSISTENT ;
 int UNLOCK (int *) ;
 int WLOCK (int *) ;
 int cm_lock ;

void
_citrus_mapper_set_persistent(struct _citrus_mapper * __restrict cm)
{

 WLOCK(&cm_lock);
 cm->cm_refcount = REFCOUNT_PERSISTENT;
 UNLOCK(&cm_lock);
}
