
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int vic_prev_indirect_vdev; } ;
struct TYPE_7__ {TYPE_2__ vdev_indirect_config; int * v_read; int v_state; int v_guid; int v_children; } ;
typedef TYPE_1__ vdev_t ;
typedef int vdev_read_t ;
typedef TYPE_2__ vdev_indirect_config_t ;
typedef int uint64_t ;


 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int UINT64_MAX ;
 int VDEV_STATE_OFFLINE ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int v_alllink ;
 int zfs_vdevs ;

__attribute__((used)) static vdev_t *
vdev_create(uint64_t guid, vdev_read_t *_read)
{
 vdev_t *vdev;
 vdev_indirect_config_t *vic;

 vdev = malloc(sizeof(vdev_t));
 memset(vdev, 0, sizeof(vdev_t));
 STAILQ_INIT(&vdev->v_children);
 vdev->v_guid = guid;
 vdev->v_state = VDEV_STATE_OFFLINE;
 vdev->v_read = _read;

 vic = &vdev->vdev_indirect_config;
 vic->vic_prev_indirect_vdev = UINT64_MAX;
 STAILQ_INSERT_TAIL(&zfs_vdevs, vdev, v_alllink);

 return (vdev);
}
