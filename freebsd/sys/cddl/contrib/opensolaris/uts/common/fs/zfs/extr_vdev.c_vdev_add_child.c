
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {size_t vdev_id; size_t vdev_children; scalar_t__ vdev_guid_sum; struct TYPE_8__* vdev_parent; struct TYPE_8__* vdev_top; struct TYPE_8__** vdev_child; int * vdev_spa; } ;
typedef TYPE_1__ vdev_t ;
typedef size_t uint64_t ;
typedef int spa_t ;


 int ASSERT (int) ;
 int KM_SLEEP ;
 int MAX (int,size_t) ;
 int RW_WRITER ;
 scalar_t__ SCL_ALL ;
 int bcopy (TYPE_1__**,TYPE_1__**,size_t) ;
 int kmem_free (TYPE_1__**,size_t) ;
 TYPE_1__** kmem_zalloc (size_t,int ) ;
 scalar_t__ spa_config_held (int *,scalar_t__,int ) ;

void
vdev_add_child(vdev_t *pvd, vdev_t *cvd)
{
 size_t oldsize, newsize;
 uint64_t id = cvd->vdev_id;
 vdev_t **newchild;
 spa_t *spa = cvd->vdev_spa;

 ASSERT(spa_config_held(spa, SCL_ALL, RW_WRITER) == SCL_ALL);
 ASSERT(cvd->vdev_parent == ((void*)0));

 cvd->vdev_parent = pvd;

 if (pvd == ((void*)0))
  return;

 ASSERT(id >= pvd->vdev_children || pvd->vdev_child[id] == ((void*)0));

 oldsize = pvd->vdev_children * sizeof (vdev_t *);
 pvd->vdev_children = MAX(pvd->vdev_children, id + 1);
 newsize = pvd->vdev_children * sizeof (vdev_t *);

 newchild = kmem_zalloc(newsize, KM_SLEEP);
 if (pvd->vdev_child != ((void*)0)) {
  bcopy(pvd->vdev_child, newchild, oldsize);
  kmem_free(pvd->vdev_child, oldsize);
 }

 pvd->vdev_child = newchild;
 pvd->vdev_child[id] = cvd;

 cvd->vdev_top = (pvd->vdev_top ? pvd->vdev_top: cvd);
 ASSERT(cvd->vdev_top->vdev_parent->vdev_parent == ((void*)0));




 for (; pvd != ((void*)0); pvd = pvd->vdev_parent)
  pvd->vdev_guid_sum += cvd->vdev_guid_sum;
}
