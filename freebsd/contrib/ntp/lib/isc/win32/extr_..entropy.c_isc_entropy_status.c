
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int entropy; } ;
struct TYPE_5__ {int lock; TYPE_1__ pool; } ;
typedef TYPE_2__ isc_entropy_t ;


 int LOCK (int *) ;
 int UNLOCK (int *) ;

unsigned int
isc_entropy_status(isc_entropy_t *ent) {
 unsigned int estimate;

 LOCK(&ent->lock);
 estimate = ent->pool.entropy;
 UNLOCK(&ent->lock);

 return estimate;
}
