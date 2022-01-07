
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vdev_state; char* vdev_path; size_t vdev_children; struct TYPE_4__** vdev_child; scalar_t__ vdev_guid; scalar_t__ vdev_islog; TYPE_2__* vdev_ops; scalar_t__ vdev_id; scalar_t__ vdev_ishole; } ;
typedef TYPE_1__ vdev_t ;
typedef int uint_t ;
typedef size_t uint64_t ;
typedef int u_longlong_t ;
typedef int state ;
struct TYPE_5__ {int vdev_op_type; } ;
 int snprintf (char*,int,char*,...) ;
 TYPE_2__ vdev_missing_ops ;
 int zfs_dbgmsg (char*,int,char*,int,int ,...) ;

void
vdev_dbgmsg_print_tree(vdev_t *vd, int indent)
{
 char state[20];

 if (vd->vdev_ishole || vd->vdev_ops == &vdev_missing_ops) {
  zfs_dbgmsg("%*svdev %u: %s", indent, "", vd->vdev_id,
      vd->vdev_ops->vdev_op_type);
  return;
 }

 switch (vd->vdev_state) {
 case 128:
  (void) snprintf(state, sizeof (state), "unknown");
  break;
 case 134:
  (void) snprintf(state, sizeof (state), "closed");
  break;
 case 130:
  (void) snprintf(state, sizeof (state), "offline");
  break;
 case 129:
  (void) snprintf(state, sizeof (state), "removed");
  break;
 case 135:
  (void) snprintf(state, sizeof (state), "can't open");
  break;
 case 132:
  (void) snprintf(state, sizeof (state), "faulted");
  break;
 case 133:
  (void) snprintf(state, sizeof (state), "degraded");
  break;
 case 131:
  (void) snprintf(state, sizeof (state), "healthy");
  break;
 default:
  (void) snprintf(state, sizeof (state), "<state %u>",
      (uint_t)vd->vdev_state);
 }

 zfs_dbgmsg("%*svdev %u: %s%s, guid: %llu, path: %s, %s", indent,
     "", (int)vd->vdev_id, vd->vdev_ops->vdev_op_type,
     vd->vdev_islog ? " (log)" : "",
     (u_longlong_t)vd->vdev_guid,
     vd->vdev_path ? vd->vdev_path : "N/A", state);

 for (uint64_t i = 0; i < vd->vdev_children; i++)
  vdev_dbgmsg_print_tree(vd->vdev_child[i], indent + 2);
}
