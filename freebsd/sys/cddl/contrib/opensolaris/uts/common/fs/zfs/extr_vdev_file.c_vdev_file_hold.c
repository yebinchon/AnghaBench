
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * vdev_path; } ;
typedef TYPE_1__ vdev_t ;


 int ASSERT (int ) ;

__attribute__((used)) static void
vdev_file_hold(vdev_t *vd)
{
 ASSERT(vd->vdev_path != ((void*)0));
}
