
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ vib_object; int * vib_entries; TYPE_1__* vib_phys; int * vib_dbuf; int * vib_objset; } ;
typedef TYPE_2__ vdev_indirect_births_t ;
typedef int boolean_t ;
struct TYPE_4__ {scalar_t__ vib_count; } ;


 int ASSERT (int) ;
 int B_TRUE ;
 int EQUIV (int,int ) ;

__attribute__((used)) static boolean_t
vdev_indirect_births_verify(vdev_indirect_births_t *vib)
{
 ASSERT(vib != ((void*)0));

 ASSERT(vib->vib_object != 0);
 ASSERT(vib->vib_objset != ((void*)0));
 ASSERT(vib->vib_phys != ((void*)0));
 ASSERT(vib->vib_dbuf != ((void*)0));

 EQUIV(vib->vib_phys->vib_count > 0, vib->vib_entries != ((void*)0));

 return (B_TRUE);
}
