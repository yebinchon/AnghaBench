
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * vdev_fru; int * vdev_path; TYPE_1__* vdev_ops; } ;
typedef TYPE_2__ vdev_t ;
typedef int uint64_t ;
typedef int spa_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_5__ {int vdev_op_leaf; } ;


 int ASSERT (int ) ;
 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int ENOENT ;
 int ENOTSUP ;
 int SCL_ALL ;
 TYPE_2__* spa_lookup_by_guid (int *,int ,scalar_t__) ;
 void* spa_strdup (char const*) ;
 int spa_strfree (int *) ;
 int spa_vdev_state_enter (int *,int ) ;
 int spa_vdev_state_exit (int *,TYPE_2__*,int ) ;
 int spa_writeable (int *) ;
 scalar_t__ strcmp (char const*,int *) ;

int
spa_vdev_set_common(spa_t *spa, uint64_t guid, const char *value,
    boolean_t ispath)
{
 vdev_t *vd;
 boolean_t sync = B_FALSE;

 ASSERT(spa_writeable(spa));

 spa_vdev_state_enter(spa, SCL_ALL);

 if ((vd = spa_lookup_by_guid(spa, guid, B_TRUE)) == ((void*)0))
  return (spa_vdev_state_exit(spa, ((void*)0), ENOENT));

 if (!vd->vdev_ops->vdev_op_leaf)
  return (spa_vdev_state_exit(spa, ((void*)0), ENOTSUP));

 if (ispath) {
  if (strcmp(value, vd->vdev_path) != 0) {
   spa_strfree(vd->vdev_path);
   vd->vdev_path = spa_strdup(value);
   sync = B_TRUE;
  }
 } else {
  if (vd->vdev_fru == ((void*)0)) {
   vd->vdev_fru = spa_strdup(value);
   sync = B_TRUE;
  } else if (strcmp(value, vd->vdev_fru) != 0) {
   spa_strfree(vd->vdev_fru);
   vd->vdev_fru = spa_strdup(value);
   sync = B_TRUE;
  }
 }

 return (spa_vdev_state_exit(spa, sync ? vd : ((void*)0), 0));
}
