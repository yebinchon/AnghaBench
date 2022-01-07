
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* v_data; } ;
typedef TYPE_1__ vnode_t ;
struct TYPE_9__ {int va_nlink; int va_nodeid; scalar_t__ va_flags; int va_atime; int va_type; int va_mode; scalar_t__ va_seq; scalar_t__ va_nblocks; scalar_t__ va_blksize; scalar_t__ va_rdev; scalar_t__ va_gid; scalar_t__ va_uid; } ;
typedef TYPE_2__ vattr_t ;
typedef int timestruc_t ;
struct TYPE_10__ {int sn_id; } ;
typedef TYPE_3__ sfs_node_t ;


 int VDIR ;
 int gethrestime (int *) ;
 int vn_fsid (TYPE_1__*,TYPE_2__*) ;
 int zfsctl_ctldir_mode ;

__attribute__((used)) static void
zfsctl_common_getattr(vnode_t *vp, vattr_t *vap)
{
 timestruc_t now;
 sfs_node_t *node;

 node = vp->v_data;

 vap->va_uid = 0;
 vap->va_gid = 0;
 vap->va_rdev = 0;




 vap->va_blksize = 0;
 vap->va_nblocks = 0;
 vap->va_seq = 0;
 vn_fsid(vp, vap);
 vap->va_mode = zfsctl_ctldir_mode;
 vap->va_type = VDIR;



 gethrestime(&now);
 vap->va_atime = now;

 vap->va_flags = 0;

 vap->va_nodeid = node->sn_id;


 vap->va_nlink = 2;
}
