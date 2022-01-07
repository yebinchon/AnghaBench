
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vdev_children; struct TYPE_3__** vdev_child; scalar_t__ vdev_path; } ;
typedef TYPE_1__ vdev_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int ZVOL_DIR ;
 int strlen (int ) ;
 scalar_t__ strncmp (scalar_t__,int ,int ) ;

boolean_t
vdev_uses_zvols(vdev_t *vd)
{
 if (vd->vdev_path && strncmp(vd->vdev_path, ZVOL_DIR,
     strlen(ZVOL_DIR)) == 0)
  return (B_TRUE);
 for (int c = 0; c < vd->vdev_children; c++)
  if (vdev_uses_zvols(vd->vdev_child[c]))
   return (B_TRUE);
 return (B_FALSE);
}
